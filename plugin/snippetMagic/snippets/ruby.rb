--- !ruby/object:SnippetSet 
package: ruby
snips: 
  do: 
    - do .. end (do)
    - "do\n\t$0\nend"
  class: 
    - class .. end (class)
    - "class ${1:class_name}\n\t$0\nend"
  begin: 
    - begin .. rescue .. end (begin)
    - "begin\n\t$1\nrescue ${2:Exception} => ${3:e}\n\t$0\nend"
  each_with_indexo: 
    - each_with_index do (each_with_indexo)
    - "each_with_index do |${1:element}, ${2:idx}|\n\t${1:element}.$0\nend"
  collect: 
    - collect element (collect)
    - collect { |${1:element}| ${1:element}.$0 }
  forin: 
    - for .. in .. end (forin)
    - "for ${1:element} in ${2:collection}\n\t${1:element}.$0\nend"
  doo: 
    - do || .. end (doo)
    - "do |${1:object}|\n\t$0\nend"
  ":": 
    - hash pair (:)
    - ":${1:key} => ${2:\"value\"}${3:, }"
  def: 
    - def .. end (def)
    - "def ${1:method_name}\n\t$0\nend"
  case: 
    - case .. end (case)
    - "case ${1:object}\n\twhen ${2:condition}\n\t\t$0\nend"
  collecto: 
    - collect element do (collecto)
    - "collect do |${1:element}|\n\t${1:element}.$0\nend"
  each: 
    - each element (each)
    - each { |${1:element}| ${1:element}.$0 }
  "{": 
    - "{ |variable| .. } ({)"
    - "{
      ${1/(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*/(?1:|)/}${1:variable}${1/(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*/(?1:|
      )/}${2:$TM_SELECTED_TEXT} "
  each_with_index: 
    - each_with_index (each_with_index)
    - "each_with_index { |${1:element}, ${2:idx}| ${1:element}.$0 }"
  if: 
    - if .. end (if)
    - "if ${1:condition}\n\t$0\nend"
  eacho: 
    - each element do (eacho)
    - "each do |${1:element}|\n\t${1:element}.$0\nend"
  unless: 
    - unless (unless)
    - "unless ${1:condition}\n\t$0\nend"
  ife: 
    - if .. else .. end (ife)
    - "if ${1:condition}\n\t$2\nelse\n\t$3\nend"
  when: 
    - when
    - "when ${1:condition}\n\t$0"
  selecto: 
    - select element do (selecto)
    - "select do |${1:element}|\n\t${1:element}.$0\nend"
  injecto: 
    - inject object do (injecto)
    - "inject(${1:object}) do |${2:injection}, ${3:element}| \n\t$0\nend"
  reject: 
    - reject element (reject)
    - reject { |${1:element}| ${1:element}.$0 }
  rejecto: 
    - reject element do (rejecto)
    - "reject do |${1:element}| \n\t${1:element}.$0\nend"
  inject: 
    - inject object (inject)
    - "inject(${1:object}) { |${2:injection}, ${3:element}| $0 }"
  select: 
    - select element (select)
    - select { |${1:element}| ${1:element}.$0 }
