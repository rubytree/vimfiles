--- !ruby/object:SnippetSet 
package: tcl
snips: 
  switch: 
    - switch... (switch)
    - "switch ${1:-exact} -- ${2:\\$var} {\n\t${3:match} {\n\t\t${4}\n\t}\n\tdefault
      {${5}}\n}\n"
  foreach: 
    - foreach... (foreach)
    - "foreach ${1:var} ${2:\\$list} {\n\t${3}\n}\n"
  proc: 
    - proc... (proc)
    - "proc ${1:name} {${2:args}} \\\\\n{\n\t${3}\n}\n"
  if: 
    - if... (if)
    - "if {${1:condition}} {\n\t${2}\n}\n"
  for: 
    - for... (for)
    - "for {${1:set i 0}} {${2:\\$i < \\$n}} {${3:incr i}} {\n\t${4}\n}\n"
  while: 
    - while... (while)
    - "while {${1:condition}} {\n\t${2}\n}\n"