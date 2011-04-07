--- !ruby/object:SnippetSet 
package: perl
snips: 
  sub: 
    - Function (sub)
    - "sub ${1:function_name} {\n\t${2:# body...}\n}\n"
  class: 
    - Package (class)
    - "package ${1:ClassName};\n\n${2:use base qw(${3:ParentClass});\n\n}sub new
      {\n\tmy \\$class = shift;\n\t\\$class = ref \\$class if ref \\$class;\n\tmy
      $self = bless {}, \\$class;\n\t\\$self;\n}\n\n1;\n"
  xfore: 
    - Loop one-line (xfore)
    - "${1:expression} foreach @${2:array};

      "
  xwhile: 
    - Loop one-line (xwhile)
    - "${1:expression} while ${2:condition};

      "
  xunless: 
    - Conditional one-line (xunless)
    - "${1:expression} unless ${2:condition};

      "
  slurp: 
    - Read File (slurp)
    - >
      my \$${1:var};

      { local \$/ = undef; local *FILE; open FILE, "<${2:file}"; \$$1 = <FILE>; close
      FILE }

  if: 
    - Conditional (if)
    - "if ($1) {\n\t${2:# body...}\n}\n"
  unless: 
    - Conditional (unless)
    - "unless ($1) {\n\t${2:# body...}\n}\n"
  ifee: 
    - Conditional if..elsif..else (ifee)
    - "if ($1) {\n\t${2:# body...}\n} elsif ($3) {\n\t${4:# elsif...}\n} else
      {\n\t${5:# else...}\n}\n"
  ife: 
    - Conditional if..else (ife)
    - "if ($1) {\n\t${2:# body...}\n} else {\n\t${3:# else...}\n}\n"
  for: 
    - Loop (for)
    - "for (my \\$${1:var} = 0; \\$$1 < ${2:expression}; \\$$1++) {\n\t${3:#
      body...}\n}\n"
  fore: 
    - Loop (fore)
    - "foreach ${1:my \\$${2:x} }(@${3:array}) {\n\t${4:# body...}\n}\n"
  eval: 
    - Try/Except (eval)
    - "eval {\n\t${1:# do something risky...}\n};\nif ($@) {\n\t${2:# handle
      failure...}\n}\n"
  while: 
    - Loop (while)
    - "while ($1) {\n\t${2:# body...}\n}\n"
  xif: 
    - Conditional one-line (xif)
    - "${1:expression} if ${2:condition};

      "