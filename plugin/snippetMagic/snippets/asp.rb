--- !ruby/object:SnippetSet 
package: asp
snips: 
  r.r: 
    - Response.Redirect (r.r)
    - Response.Redirect(${1:to})
  app: 
    - Application("…") (app)
    - Application("$1")
  forin: 
    - For … in … Next (forin)
    - "For ${1:var} in ${2:array}\n\t${3:' body}\nNext"
  ifelse: 
    - If … End if (ifelse)
    - "If ${1:condition} Then\n\t${2:' true}\nElse\n\t${3:' false}\nEnd if"
  r.w: 
    - Response.Write (r.w)
    - "Response.Write "
  "=": 
    - "<%= %> (=)"
    - "<%= $0 %>"
  sess: 
    - Session("…") (sess)
    - Session("${1:whatever}")
  r.f: 
    - Request.Form("…") (r.f)
    - Request.Form("${1:field}")
  r.q: 
    - Request.QueryString (r.q)
    - Request.QueryString("${1:name}")
  while: 
    - While … Wend (while)
    - "While ${1:NOT ${2:condition}}\n\t${3:' body}\nWend"