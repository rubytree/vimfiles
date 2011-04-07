--- !ruby/object:SnippetSet 
package: phpdoc
snips: 
  doc_d: 
    - Constant Definition (doc_d)
    - |-
      /**
       * ${3:undocumented constant}
       **/
      define($1, $2);$0
  doc_vp: 
    - "Class Variable - post doc (doc_vp)"
    - |-
      /**
       * ${1:undocumented class variable}
       *
       * @var ${2:string}$3
       **/$0
  doc_f: 
    - Function (doc_f)
    - |-
      /**
       * ${4:undocumented function}
       *
       * @return ${5:void}
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}$6
       **/
      $1function $2($3)
      {$0
      }
  doc_s: 
    - Function Signature (doc_s)
    - |-
      /**
       * ${4:undocumented function}
       *
       * @return ${5:void}
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}$6
       **/
      $1function $2($3);$0
  doc_h: 
    - Header (doc_h)
    - |
      /**
       * $1
       *
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}
       * @version \$Id\$
       * @copyright `echo $TM_ORGANIZATION_NAME`, `date +"%e %B, %Y"`
       * @package ${3:default}
       **/

      /**
       * Define DocBlock
       **/

  doc_fp: 
    - "Function - post doc (doc_fp)"
    - |-
      /**
       * ${1:undocumented function}
       *
       * @return ${2:void}
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}$3
       **/$0
  doc_i: 
    - Interface (doc_i)
    - |-
      /**
       * ${2:undocumented class}
       *
       * @package ${3:default}
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}
       **/
      interface $1
      {$0
      } // END interface $1
  doc_dp: 
    - "Constant Definition - post doc (doc_dp)"
    - |-
      /**
       * ${1:undocumented constant}$2
       **/$0
  doc_v: 
    - Class Variable (doc_v)
    - |-
      /**
       * ${3:undocumented class variable}
       *
       * @var ${4:string}
       **/
      ${1:var} \$$2;$0
  doc_cp: 
    - "Class - post doc (doc_cp)"
    - |-
      /**
       * ${1:undocumented class}
       *
       * @package ${2:default}
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}$3
       **/$0
  doc_c: 
    - Class (doc_c)
    - |-
      /**
       * ${3:undocumented class}
       *
       * @package ${4:default}
       * @author ${PHPDOC_AUTHOR:`niutil -readprop / "/users/$USER" realname`}
       **/
      $1class $2
      {$0
      } // END $1class $2