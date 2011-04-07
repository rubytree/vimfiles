--- !ruby/object:SnippetSet 
package: xml
snips: 
  "<a": 
    - Long Attribute Tag (<a)
    - >-
      <${1:name} ${2:attr="value"}>$0

      </${1:name}>

  "<": 
    - Long Tag (<)
    - "<${1:name}>$0</${1/([^ ]+).*/$1/}>"
  ">": 
    - Short Tag (>)
    - "<${1:name} />"