--- !ruby/object:SnippetSet 
package: xhtml
snips: 
  doctype: 
    - DocType XHTML 1.0 Strict (doctype)
    - |-
      <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
              "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
      $0
  aref: 
    - "  <a href> (aref)"
    - "<a href=\"$1\" id=\"${2:id}\" title=\"${3:title}\">$0</a>"
  head: 
    - " <head> (head)"
    - "<head>\n\t$0\n</head>"
  script: 
    - "  <script> (script)"
    - "<script type=\"text/javascript\" language=\"${1:javascript}\"
      charset=\"${2:utf-8}\">\n// <![CDATA[\n\t$0\n// ]]>\n</script>"
  html: 
    - "<html> (html)"
    - "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\"
      lang=\"${1:en}\">	$0

      </html>"
  h3: 
    - "   <h3> (h3)"
    - "<h3>${1:`echo $TM_SELECTED_TEXT`}$0</h3>"
  fieldset: 
    - "  <fieldset> (fieldset)"
    - "<fieldset>\n\t$0\n</fieldset>"
  noscript: 
    - "  <noscript> (noscript)"
    - "<noscript>\n\t$0\n</noscript>"
  ul: 
    - "  <ul> Unordered List (ul)"
    - "<ul ${1:id=\"\"} ${2:class=\"\"}>\n\t$0\n</ul>"
  xml: 
    - "<?xml prolog?> (xml)"
    - >-
      <?xml version="1.0" encoding="iso-8859-1"?>

      $0

  h4: 
    - "   <h4> (h4)"
    - "<h4>${1:`echo $TM_SELECTED_TEXT`}$0</h4>"
  body: 
    - " <body> (body)"
    - "<body id=\"$1\" ${2:onload=\"\"}>\n\t$0\n</body>"
  legend: 
    - "  <legend> (legend)"
    - "<legend align=\"$1\" accesskey=\"$2\">\n\t$0\n</legend>"
  title: 
    - "  <title> (title)"
    - "<title>${1:PageTitle}</title>$0"
  h5: 
    - "   <h5> (h5)"
    - "<h5>${1:`echo $TM_SELECTED_TEXT`}$0</h5>"
  scriptsrc: 
    - "  <script src> (scriptsrc)"
    - "<script src=\"$1\" type=\"text/javascript\" language=\"${2:javascript}\"
      charset=\"${3:utf-8}\"></script>$0"
  img: 
    - "  <img> (img)"
    - "<img src=\"$1\" alt=\"$2\" class=\"$3\" />$0"
  h6: 
    - "   <h6> (h6)"
    - "<h6>${1:`echo $TM_SELECTED_TEXT`}$0</h6>"
  option: 
    - "  <option> (option)"
    - >-
      <option label="${1:label}" value="${2:value}" ${3:selected="selected"}></option>

      $0

  optgroup: 
    - "   <optgroup> (optgroup)"
    - "<optgroup label=\"${1:Label}\">\n\t$0\n</optgroup>"
  meta: 
    - "  <meta> (meta)"
    - "<meta name=\"${1:name}\" content=\"${2:content}\" />$0"
  td: 
    - "   <td> (td)"
    - "<td ${1:class=\"\"}>$0</td>"
  dt: 
    - "  <dt>  (dt)"
    - |
      <dt>
        $0
      </dt>
      <dd></dd>

  tfoot: 
    - "   <tfoot> (tfoot)"
    - "<tfoot>\n\t$0\n</tfoot>"
  div: 
    - "  <div> (div)"
    - "<!-- begin div.$1 -->\n<div id=\"$1\">\n\t${2:`echo
      $TM_SELECTED_TEXT`}$0\n</div>\n<!-- end div.$1 -->"
  ol: 
    - "  <ol> Ordered List (ol)"
    - "<ol ${1:id=\"\"} ${2:class=\"\"}>\n\t$0\n</ol>"
  txtarea: 
    - "  <textarea> (txtarea)"
    - "<textarea id=\"${1:ID}\" name=\"${2:Name}\" rows=\"$3\" cols=\"$4\"
      tabindex=\"$5\" ${6:readonly=\"readonly\"} >$0</textarea>"
  mailto: 
    - "<a href=\"mailto:\"> (mailto)"
    - "<a href=\"mailto:${1:joe@example.com}?subject=${2:feedback}\">${3:email me}</a>"
  table: 
    - "  <table> (table)"
    - "<table summary=\"${1:Summary}\" class=\"${2:className}\" width=\"${3:100%}\"
      cellspacing=\"$4\" cellpadding=\"$5\" border=\"$6\">\n\t$0\n</table>"
  hint: 
    - "  <span class=\"hint\"> (hint)"
    - "<span class=\"hint\">$0</span>"
  link: 
    - "  <link> (link)"
    - "<link rel=\"${1:stylesheet}\" href=\"${2:/css/master.css}\" type=\"text/css\"
      media=\"${3:screen}\" title=\"${4:no title}\" charset=\"${5:utf-8}\" />$0"
  form: 
    - "  <form> (form)"
    - "<form action=\"${1:url_to_go_to}\" method=\"${2:get}\" id=\"${3:formID}\"
      name=\"${4:formName}\">\n\t$0\n</form>"
  tr: 
    - "   <tr> (tr)"
    - "<tr ${1:class=\"\"}>\n\t$0\n</tr>"
  pc: 
    - "  <p class=\"\"> (pc)"
    - "<p class=\"${1:className}\">${2:`echo $TM_SELECTED_TEXT`}</p>$0"
  dl: 
    - "  <dl>  (dl) "
    - |-
      <dl>
        <dt>
          $0
        </dt>
        <dd></dd>
      </dl>
  label: 
    - "   <label> (label)"
    - "<label for=\"${1:inputItem}\">${2:Label Text}</label>$0"
  image: 
    - "  <img...>(image)"
    - "<img src=\"$1\" alt=\"$2\" width=\"$3\" height=\"$4\" ${5:class=\"\"}$0 />"
  h1: 
    - "   <h1> (h1)"
    - "<h1>${1:`echo $TM_SELECTED_TEXT`}$0</h1>"
  th: 
    - "   <th> (th)"
    - "<th>\n\t$0\n</th>"
  input: 
    - "   <input radio> (input)"
    - "<input name=\"$1\" id=\"$2\" type=\"radio\" value=\"${3:default_value}\"
      tabindex=\"$4\" ${5:checked=\"checked\"} ${6:disabled=\"disabled\"} />$0"
  select: 
    - "   <select> (select)"
    - "<select id=\"${1:ID}\" name=\"${2:Name}\" size=\"$3\" tabindex=\"$4\"
      ${5:multiple=\"multiple\"}>\n\t$0\n</select>\n"
  style: 
    - "  <style> (style)"
    - "<style type=\"text/css\" media=\"${1:screen}\">\n/* <![CDATA[ */\n\t$0\n/* ]]>
      */\n</style>\n"
  h2: 
    - "   <h2> (h2)"
    - "<h2>${1:`echo $TM_SELECTED_TEXT`}$0</h2>"
  div.header: 
    - Div.Header (div.header)
    - "<!-- Begin HeaderDiv:: -->\n<div id=\"HeaderDiv\">\n\t<!--logo in background
      -->\n\t<h1>${1:CompanyName}</h1>\n</div>\n<!-- End HeaderDiv:: -->\n$0"
  base: 
    - "  <base> (base)"
    - "<base href=\"$1\" ${2:target=\"\"} />"
  charset: 
    - "<charset> (base)"
    - "<meta http-equiv="Content-Type" content="application/xhtml+xml; charset=$1" />$0"
    
    
    
    
