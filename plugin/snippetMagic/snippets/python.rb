--- !ruby/object:SnippetSet 
package: python
snips: 
  get: 
    - New Get Method (get)
    - "def get$1(self): return self._$1"
  class: 
    - New Class (class)
    - "class ${1:ClassName} (${2:object}):\n\n\tdef __init__(self${3/([^,])?.*/(?1:,
      )/}${3:arg}):\n${3/([a-zA-Z0-9_]+)\\s*(=[^,]*)?(,\\s*|$)/\\t\\tself.$1 =
      $1\\n/g}\t\t${4:pass}\n\n\n$0"
  set: 
    - New Set Method (set)
    - "def set$1(self, ${2:newValue}): self._$1 = $2"
  ".": 
    - self (.)
    - self.
  def: 
    - New Function (def)
    - "def ${1:fname}(${2:self}):\n\t${3:pass}"