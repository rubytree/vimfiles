--- !ruby/object:SnippetSet 
package: django
snips: 
  "{{": 
    - "templatetag: openvariable"
    - "{% templatetag openvariable %}"
  "}}": 
    - "templatetag: closevariable"
    - "{% templatetag closevariable %}"
  now: 
    - now
    - "{% now \"$1\" %}"
  firstof: 
    - firstof
    - "{% firstof $1 %}"
  ifequal: 
    - ifequal
    - "{% ifequal $1 $2 %}\n\t$3\n{% endifequal %}"
  ifchanged: 
    - ifchanged
    - "{% ifchanged %}$1{% endifchanged %}"
  regroup: 
    - regroup
    - "{% regroup $1 by $2 as $3 %}"
  "%}": 
    - "templatetag: closeblock"
    - "{% templatetag closeblock %}"
  extends: 
    - extends
    - "{% extends \"$1\" %}"
  filter: 
    - filter
    - "{% filter $1 %}\n\t$2\n{% endfilter %}"
  block: 
    - block
    - "{% block $1 %}\n\t$2\n{% endblock %}"
  cycle: 
    - cycle
    - "{% cycle $1 as $2 %}"
  if: 
    - if
    - "{% if $1 %}\n\t$2\n{% endif %}"
  debug: 
    - debug
    - "{% debug %}"
  ifnotequal: 
    - ifnotequal
    - "{% ifnotequal $1 $2 %}\n\t$3\n{% endifnotequal %}"
  include: 
    - include
    - "{% include ${1:\"$2\"} %}"
  comment: 
    - comment
    - "{% comment %}\n\t$1\n{% endcomment %}"
  for: 
    - for
    - "{% for $1 in $2 %}\n\t$3\n{% endfor %}"
  ssi: 
    - ssi
    - "{% ssi $1 ${2:parsed} %}"
  model: 
    - Model Skeleton (model)
    - "class ${1:Modelname}(meta.Model):\n\t\"\"\"${2:(model
      description)}\"\"\"\n\t${3:fieldname} =
      meta.${4:CharField}(${5:maxlength=30})\n\t$0\n\n\tclass META:\n\t\tadmin =
      meta.Admin()\n\n\tdef __repr__(self):\n\t\treturn \"__repr__ definition goes
      here\"\n"
  widthratio: 
    - widthratio
    - "{% widthratio ${1:this_value} ${2:max_value} ${3:100} %}"
  "{%": 
    - "templatetag: openblock"
    - "{% templatetag openblock %}"
  load: 
    - load
    - "{% load $1 %}"