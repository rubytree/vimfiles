--- !ruby/object:SnippetSet 
package: propel
snips: 
  "<i": 
    - "xml - index"
    - "<index name=\"${1:key}_index\">\n\t<index-column name=\"${1:key}\" />\n</index>"
  "<t": 
    - "xml - table"
    - "<table name=\"${1:name}\"${2: phpName=\"${3:php_name}\"}>\n\t$0\n</table>"
  "<u": 
    - "xml - unique"
    - "<unique name=\"unique_${1:key}\">\n\t<unique-column name=\"${1:key}\"
      />\n</unique>"
  "<c": 
    - "xml - column"
    - "<column name=\"${1:name}\" type=\"${2:type}\"${3: required=\"${4:true}\"}${5:
      default=\"${6:}\"} />"
  "<p": 
    - "xml - primary key"
    - "<column name=\"${1:id}\" type=\"${2:integer}\" required=\"true\"
      primaryKey=\"true\" autoincrement=\"true\" />"
  "<f": 
    - "xml - foreign key"
    - "<foreign-key foreignTable=\"${1:table}\">\n\t<reference local=\"${1:table}_id\"
      foreign=\"${2:id}\"/>\n</foreign-key>"