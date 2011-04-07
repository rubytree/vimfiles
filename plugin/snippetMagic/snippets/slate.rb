--- !ruby/object:SnippetSet 
package: slate
snips: 
  do: 
    - do (do)
    - "do: [| :${1:each}| $0]"
  proto: 
    - define prototype (proto)
    - |
      define: #${1:NewName} &parents: {${2:parents}}
       &slots: {${3:slotSpecs}}.

  ifte: 
    - If-then-else (ifte)
    - "${1:condition} ifTrue: [$2:then] ifFalse: [$3:else]"
  collect: 
    - collect (collect)
    - "collect: [| :${1:each}| $0]"
  "[": 
    - Block Header ([)
    - "[${1/(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*/(?1:|)/}
      ${1:variable}
      ${1/(^(?<var>\\s*[a-z_][a-zA-Z0-9_]*\\s*)(,\\g<var>)*,?\\s*$)|.*/(?1:|
      )/}${2:$TM_SELECTED_TEXT} "
  if: 
    - If-then (if)
    - "${1:condition} ifTrue: [$2:then]"
  until: 
    - until (until)
    - "[${1:condition}] whileFalse: [$2:body]"
  reject: 
    - reject (reject)
    - "reject: [| :${1:each}| $0]"
  dowith: 
    - doWithIndex (dowith)
    - "doWithIndex: [| :${1:each} :${2:index} | $0]"
  select: 
    - select (select)
    - "select: [| :${1:each}| $0]"
  while: 
    - while (while)
    - "[${1:condition}] whileTrue: [$2:body]"
  inject: 
    - inject into (inject)
    - "inject: ${1:object} [| :${2:injection}, :${3:each}| $0]"