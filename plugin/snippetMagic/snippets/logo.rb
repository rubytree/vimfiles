--- !ruby/object:SnippetSet 
package: logo
snips: 
  "\"": 
    - Standalone Quote
    - "\""
  to: 
    - To
    - |
      to ${1:procedure.name} ${2::argument}
        ${3:;procedure body}
      end
