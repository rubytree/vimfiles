--- !ruby/object:SnippetSet 
package: html
snips: 
  doctype: 
    - XHTML — 1.0 Frameset (doctype)
    - "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0
      Frameset//EN\"\n\t\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n"
  head: 
    - Head (head)
    - "<head>\n\t<meta http-equiv=\"Content-type\" content=\"text/html; charset=utf-8\"
      />\n\t<title>${1:${TM_FILENAME/((.+)\\..*)?/(?2:$2:Page
      Title)/}}</title>\n\t$0\n</head>"
  script: 
    - Script (script)
    - "<script type=\"text/javascript\" language=\"javascript\" charset=\"utf-8\">\n//
      <![CDATA[\n\t$0\n// ]]>\n</script>"
  title: 
    - Title (title)
    - "<title>${1:${TM_FILENAME/((.+)\\..*)?/(?2:$2:Page Title)/}}</title>"
  body: 
    - Body (body)
    - "<body id=\"${1:${TM_FILENAME/(.*)\\..*/\\L$1/}}\"${2:
      onload=\"$3\"}>\n\t$0\n</body>"
  scriptsrc: 
    - Script With External Source (scriptsrc)
    - "<script src=\"$1\" type=\"text/javascript\" language=\"${2:javascript}\"
      charset=\"${3:utf-8}\"></script>"
  textarea: 
    - Text Area (textarea)
    - "<textarea name=\"${1:Name}\" rows=\"${2:8}\" cols=\"${3:40}\">$0</textarea>"
  meta: 
    - Meta (meta)
    - "<meta name=\"${1:name}\" content=\"${2:content}\" />"
  movie: 
    - Embed QT Movie (movie)
    - "<object width=\"$2\" height=\"$3\"
      classid=\"clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B\"
      codebase=\"http://www.apple.com/qtactivex/qtplugin.cab\">\n\t<param name=\"src\"
      value=\"$1\" />\n\t<param name=\"controller\" value=\"$4\" />\n\t<param
      name=\"autoplay\" value=\"$5\" />\n\t<embed
      src=\"${1:movie.mov}\"\n\t\twidth=\"${2:320}\"
      height=\"${3:240}\"\n\t\tcontroller=\"${4:true}\"
      autoplay=\"${5:true}\"\n\t\tscale=\"tofit\"
      cache=\"true\"\n\t\tpluginspage=\"http://www.apple.com/quicktime/download/\"\n\t/>\n</object>"
  div: 
    - Div (div)
    - "<div${1: id=\"${2:name}\"}>\n\t${0:$TM_SELECTED_TEXT}\n</div>"
  mailto: 
    - Mail Anchor (mailto)
    - "<a href=\"mailto:${1:joe@example.com}?subject=${2:feedback}\">${3:email me}</a>"
  table: 
    - Table (table)
    - "<table border=\"${1:0}\"${2: cellspacing=\"${3:5}\"
      cellpadding=\"${4:5}\"}>\n\t<tr><th>${5:Header}</th></tr>\n\t<tr><td>${0:Data}</td></tr>\n</table>"
  link: 
    - Link (link)
    - "<link rel=\"${1:stylesheet}\" href=\"${2:/css/master.css}\" type=\"text/css\"
      media=\"${3:screen}\" title=\"${4:no title}\" charset=\"${5:utf-8}\" />"
  form: 
    - Form (form)
    - "<form action=\"${1:${TM_FILENAME/(.*?)\\..*/$1_submit/}}\"
      method=\"${2:get}\">\n\t$0\n\n\t<p><input type=\"submit\" value=\"Continue
      &rarr;\" /></p>\n</form>"
  ref: 
    - Wrap Selection as Link
    - "<a href=\"${1:http://somesite.com/}\">${2:${TM_SELECTED_TEXT:Link text...}}</a>"
  h1: 
    - Heading (h1)
    - "<h1 id=\"${1/[[:alpha:]]+|( )/(?1:_:\\L$0)/g}\">${1:$TM_SELECTED_TEXT}</h1>"
  input: 
    - Input (input)
    - "<input type=\"${1:text/submit/hidden/button}\" name=\"${2:some_name}\"
      value=\"$3\"${4: id=\"${5:$2}\"} />"
  style: 
    - Style (style)
    - "<style type=\"text/css\" media=\"screen\">\n/* <![CDATA[ */\n\t$0\n/* ]]>
      */\n</style>\n"
  base: 
    - Base (base)
    - "<base href=\"$1\"${2: target=\"$3\"} />"