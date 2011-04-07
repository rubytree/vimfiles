#!/usr/bin/env ruby

require 'rexml/document'
require 'rexml/streamlistener'
require 'yaml'

require 'snippet_set'

include REXML

# A class to parse textmate style bundles.  Currently this will only
# grab the snippet definitions from either xml property lists or what I'm
# guessing is an older format of plain-text lists.
# This class implements callbacks so that it also operates as a SAX style XML
# parser.
class BundleParser
  include StreamListener

  INDENT_CHAR = " "
  INDENT_SIZE = 2
  TAB_CHARS = '<<<'

  # a regex for matching <key>...</key> lines
  # group 1 is the name of the key
  KEY_RE = /^\s*<key>([A-Za-z]+[_A-Za-z0-9]*)<\/key>\s*$/

  # a regex for matching <string>...</string> value lines
  # group 1 is the value of the environment variable
  VALUE_RE = /^\s*<string>([-_:.\/0-9A-Za-z]+)<\/string>\s*$/

  # Try to find a bundle that corresponds with the current filetype in VIM.
  def BundleParser.lookup(filetype)
    homedir = ENV["HOME"]
    bdir = File.join(homedir, ".vim/plugin/snippetMagic/bundles")
    dirs = Dir.entries(bdir)
    theDir = dirs.detect {|d| d =~ /#{filetype}/i }

    print "Parsing snippet bundle for #{filetype}"
    BundleParser.new(File.join(bdir, theDir)).bundle
  end

  def BundleParser.translate_bundles(bdir, dst)
    bundles = {}
    Dir.foreach(bdir) do |package_dir|
      snip_dir = File.join(bdir, package_dir, "Snippets/")
      puts "Snippet Directory: #{snip_dir}"

      if File.exists?(snip_dir)
        bundle = BundleParser.new(snip_dir).bundle
        bundles[package_dir.downcase[0...-9]] = bundle unless bundle.empty?
      end
    end

    indent = INDENT_CHAR * INDENT_SIZE

    bundles.each do |package, bundle|
      num_triggers = 0

      # Don't keep snippets that aren't based on tab triggers until we
      # support them.
      bundle.reject! {|trig, snip| not snip.has_key?("tabTrigger")}

      unless bundle.empty?
        set = SnippetSet.new(package) 
        bundle.each {|t,s| set.add_snip(t, s['name'], s['content'])}

        puts "#{package}: #{set.snips.size}"
        File.open(File.join(dst, package + ".rb"), "w") {|f| f.write(set.to_yaml)} unless set.snips.empty?
      end
    end

      # Old way using crazy strings
#      bundle.each do |trigger, snip|
#        next if trigger.nil? or snip['content'].nil?
#        num_triggers += 1
#        name = snip['name'].gsub('\\', '\&\&').
#          gsub('#', '\#').
#          gsub('!', '\!')
#        trig = trigger.gsub('\\', '\&\&').
#          gsub('#', '\#').
#          gsub('!', '\!')
#        content = snip['content'].gsub('\\', '\&\&').
#          gsub('#', '\#').
#          gsub('!', '\!').
#          gsub("\t", TAB_CHARS).
#          gsub("\n", "\n" + indent * 2) 
#
#        file_str << (indent + 
#                "snip %!#{name}!,\n" + 
#                indent * 2 + "%!#{trig}!,\n" + 
#                indent * 2 + "%!\n" +
#                indent * 2 + content + "\n" + 
#                indent + "!\n\n")
#      end
#      file_str << "end"
#
#      if num_triggers > 0
#        fname = File.join(dst, lang + ".rb")
#        f = File.new(fname, "w")
#        f.write(file_str)
#        f.close
#      end
#    end
  end

  attr_reader :bundle

  # Bundles are parsed into hash's of arrays, where the hash key is the snippet
  # trigger and the hash value is an array of lines for the contents of the
  # snippet.  Its done this way because we have access to vim's buffer on a
  # line by line basis rather than a char by char basis. 
  # TODO: Look into the vim ruby bindings to see if a character stream
  # interface could be added.
  def initialize(dir)
    raise "Invalid bundle directory: #{dir}" unless File.directory?(dir)
    @bundle_dir = dir
    @bundle = {}

    parse_bundle
  end

  # Figure out if its an xml plist or the other simple text format.
  def parse_bundle
    Dir.glob(@bundle_dir + "**/*.plist") do |file_name|
      file = File.new(file_name) 
      first = file.readline
      file.rewind

      if first =~ /\<\?xml/
        Parsers::StreamParser.new(file, self).parse
      elsif first =~ /^\{/
        parse_simple_snippet(file)
      else
        puts "Invalid snippet file: #{file_name}"
      end

      @bundle[@cur_snippet["tabTrigger"]] = @cur_snippet
    end
  end

  # A parser using regular expressions on the simple text format.
  def parse_simple_snippet(file)
    @cur_snippet = {}

    file.each_line do |line|
      if line =~ KEY_RE
        cur_key = $1

      elsif line =~ VALUE_RE
        @cur_snippet[cur_key] = $1
      end
    end
  end

  # Callback for when new tags are encountered.
  def tag_start(name, attrs)
    case name 
    when "dict"
      @cur_snippet = {}
    end
  end

  # Callback for ending tags.
  def tag_end(name)
    case name
    when "key"
      @last_key = @text
    when "string"
      @cur_snippet[@last_key] = @text
    end
  end

  # Callback for text inside tags.
  def text(text)
    @text = text
  end
end

BundleParser.translate_bundles("bundles", "snippets")
