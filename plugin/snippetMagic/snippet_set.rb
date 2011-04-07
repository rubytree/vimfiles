require 'yaml'

class SnippetSet
  @@all_sets = {}

  attr_reader :package, :snips

  def SnippetSet.all
    @@all_sets
  end

  # The default yaml parser should work.
  YAML.add_domain_type("rosejn.net,2006-29-02", "snippetSet") do |type, val|
    YAML.object_maker(SnippetSet, val)
  end

  def SnippetSet.load(filename)
    set = File.open(filename, "r") {|f| YAML::load(f) }
    @@all_sets[set.package] = set
  end

  def initialize(package)
    @package = package
    @snips = {}

    @@all_sets[package] = self
  end

  def add_snip(trigger, name, content)
    #n = prepare_string(name)
    #t = prepare_string(trigger)
    #c = prepare_string(content)
    @snips[trigger] = [name, content]
  end

  private

  # This code was grabbed from the ruby extensions project.  It just didn't
  # make sense to require installation of the gem for a vim plugin.
  # Trim, tabto and replace odd characters.
  def prepare_string(str)
    # Remove initial blank line.
    str.sub!(/\A[ \t]*\n/, "")

    # Remove a trailing newline
    str.chomp!

    # Remove trailing whitespace on each line
    str.gsub!(/[ \t]+$/, "")

    # Convert special characters back.
    str.gsub!('<<<', TAB)
    str.gsub!('\\\\', '\\')
    str.gsub!('\#', '#')
    str.gsub!('\!', '!')

    min_indent = str.scan(/^([ \t]*)\S/).flatten.map { |ws| ws.size }.compact.min
    find = " " * min_indent
    str.gsub(/^#{find}/, "")
  end
end
