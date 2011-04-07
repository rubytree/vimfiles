--- !ruby/object:SnippetSet 
package: f-script
snips: 
  tbd: 
    - "to:by:do: (tbd)"
    - "to:$1 by:$2 do:[ ${3::i} |\n\t$4\n]."
  it: 
    - "ifTrue: (it)"
    - "ifTrue:[\n\t$1\n]."
  ift: 
    - "ifFalse:ifTrue: (ift)"
    - "ifFalse:[\n\t$1\n] ifTrue:[\n\t$2\n]."
  itf: 
    - ifTrue:ifFalse (itf)
    - "ifTrue:[\n\t$1\n] ifFalse:[\n\t$2\n]."
  td: 
    - "to:do: (td)"
    - "to:$1 do:[ ${2::i} |\n\t$3\n]."
  if: 
    - "ifFalse: (if)"
    - "ifFalse:[\n\t$1\n]."