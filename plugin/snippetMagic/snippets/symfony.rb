--- !ruby/object:SnippetSet 
package: symfony
snips: 
  image_tag: 
    - "template - image_tag"
    - "image_tag('${1:image_name}'${2:, array(${3})})"
  get: 
    - basic getter
    - |-
      public function get$1 ()
      {
        return \$this->$2;
      }

      $0
  link_to: 
    - "template - link_to"
    - "link_to('${1:link_name}', '${2:module_name}/${3:action_name}${4:?}')$0"
  getuser: 
    - "action - getUser"
    - "\\$this->getUser()->"
  hasparam: 
    - "action - hasRequestParameter"
    - "\\$this->hasRequestParameter('${1:id}')$0"
  "=>": 
    - "template - =>"
    - "'${1}' => '${2}'${3:, }"
  sexecute: 
    - "action - new action (no comments)"
    - |
      public function execute${1:Action}()
      {
        $0
      }

  set: 
    - basic setter
    - |-
      public function set$1 (\$$2)
      {
        \$this->$2 = \$$2;
      }

      $0
  execute: 
    - "action - new action"
    - |-
      /**
       * ${1:class_name}
       *
       */
      public function execute${1:Action}()
      {
        $0
      }
  tforeach: 
    - "template - foreach"
    - |-
      <?php foreach (\$${1:variable} as \$${2:key}${3: => \$${4:value}}): ?>
        ${0}
      <?php endforeach ?>
  getparam: 
    - "action - getRequestParameter"
    - "\\$this->getRequestParameter('${1:id}')$0"
  div: 
    - "tempalte - div"
    - "<div${1: id=\"${2:name}\"}>\n\t${0:$TM_SELECTED_TEXT}\n</div>"
  tif: 
    - "template - if"
    - |-
      <?php if (${1:condition}): ?>
        ${0}
      <?php endif ?>
  setget: 
    - basic getter and setter
    - |-
      public function set$1 (\$$2)
      {
        \$this->$2 = \$$2;
      }

      public function get$1 ()
      {
        return \$this->$2;
      }

      $0
  echo: 
    - "template - echo tag"
    - "<?php echo $0 ?>"
  tfor: 
    - "template - for"
    - |-
      <?php for(\$${1:i} = ${2:1}; \$${1} <= ${3}; \$${1}++): ?>
        ${0}
      <?php endfor ?>