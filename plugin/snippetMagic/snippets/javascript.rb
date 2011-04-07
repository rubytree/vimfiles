--- !ruby/object:SnippetSet 
package: javascript
snips: 
  proto: 
    - Prototype (proto)
    - "${1:class_name}.prototype.${2:method_name} =
      function(${3:first_argument})\n{\n\t${0:// body...}\n};\n"
  fun: 
    - Function (fun)
    - "function ${1:function_name} (${2:first_argument})\n{\n\t${0:// body...}\n}"