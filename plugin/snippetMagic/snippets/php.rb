--- !ruby/object:SnippetSet 
package: php
snips: 
  elseif: 
    - elseif .. (elseif)
    - "elseif ( ${1:} )\n{\n\t${0:}\n}"
  do: 
    - do .. while .. (do)
    - "do\n{\n\t${0:}\n\t\n} while ( ${1:} );"
  req1: 
    - require_once(..) (req1)
    - "require_once( '${1:file}' );$0"
  "if?": 
    - "$.. = ( .. ) ? .. : .. (if?)"
    - "\\$${1:retVal} = ( ${2:condition} ) ? ${3:a} : ${4:b} ;"
  php: 
    - "<?php .. ?> (php)"
    - "<?php\n\n\t$0\n\n?>"
  switch: 
    - switch .. (switch)
    - "switch ( ${1:variable} )\n{\n\tcase '${2:value}':\n\t\t${3:#
      code...}\n\tbreak;\n\t\n\t$0\n\t\t\t\n\tdefault:\n\t\t${4:#
      code...}\n\tbreak;\n}"
  class: 
    - class .. (class)
    - "#doc\n#\tclassname:\t${1:ClassName}\n#\tscope:\t\t${2:PUBLIC}\n#\n#/doc\n\nclass
      ${1:ClassName} ${3:extends AnotherClass}\n{\n\t#\tinternal
      variables\n\t\n\t#\tConstructor\n\tfunction __construct ( ${4:argument}
      )\n\t{\n\t\t${0:# code...}\n\t}\n\t###\t\n\n}\n###"
  incl1: 
    - include_once(..) (incl1)
    - "include_once( '${1:file}' );$0"
  incl: 
    - include(..) (incl)
    - "include( '${1:file}' );$0"
  foreach: 
    - foreach .. (foreach)
    - "foreach( $${1:} as $${2:} => $${3:} )\n{\n${0:
      }\n}"
  ifelse: 
    - if .. else .. (ifelse)
    - "if ( ${1:condition} )\n{\n\t${2:# code...}\n}\nelse\n{\n\t${3:# code...}\n}\n$0"
  "$_": 
    - "REQUEST['..'] ($_)"
    - "\\$_REQUEST['${1:variable}']"
  case: 
    - case .. (case)
    - "case '${1:variable}':\n\t${0:# code...}\nbreak;"
  print: 
    - print ".." (print)
    - "print \"${1:string}\"${2: . };$0"
  function: 
    - function .. (function)
    - "${1:public }function ${2:FunctionName} (${3: \\$${4:value}${5:=''}
      })\n{\n\t${0:# code...}\n}"
  if: 
    - if .. (if)
    - "if ( ${1:condition} )\n{\n\t${0:# code...}\n}"
  else: 
    - else .. (else)
    - "else\n{\n\t${0:# code...}\n}"
  array: 
    - "$.. = array (..) (array)"
    - "\\$${1:arrayName} = array( '$2'${3:,} );$0"
  "-globals": 
    - "$GLOBALS['..'] (-globals)"
    - "\\$GLOBALS['${1:variable}']${2: = }${3:something}${4:;}$0"
  req: 
    - require(..) (req)
    - "require( '${1:file}' );$0"
  for: 
    - for .. (for)
    - "for ( \\$${1:i}=${2:0}; \\$${1:i} < $3; \\$${1:i}++ )\n{ \n\t${0:# code...}\n}"
  while: 
    - while .. (while)
    - "while ( ${1:$a <= 10} )\n{\n\t${0:# code...}\n}"
  "=>": 
    - => .. (=>)
    - "'${1:}' => '${2:}'${0:}"
