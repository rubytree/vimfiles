--- !ruby/object:SnippetSet 
package: haskell
snips: 
  mod: 
    - module (mod)
    - "module ${1:Main} where\n\t$2"
  "\\": 
    - "\\t -> t (\\)"
    - "\\\\${1:t} -> ${1:t}"