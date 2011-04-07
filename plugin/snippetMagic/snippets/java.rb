--- !ruby/object:SnippetSet 
package: java
snips: 
  meth: 
    - method
    - |
      // {{{ ${1:METHOD}
      /**
       * $0
       */
      public ${2:RETURN} ${1:METHOD}() {
          $0
      }
      // }}}

  jps: 
    - const def
    - private static final ${1:String} $2 = "$0";
  jtc: 
    - try/catch/finally
    - |-
      try {
         $2
      } catch ($1 e) {
         $3
      } finally {
         $0
      }
  jlog: 
    - logger
    - >
      /** Logger for this class and subclasses. */

      protected final Log log = LogFactory.getLog(getClass());

  jpv: 
    - private var
    - >-
      private ${1:String} $2;


      $0

  bean: 
    - setter and getter
    - |
      // {{{ set${1/./\u$0/}
      /**
       * Setter for ${1:fieldName}.
       * @param new${1/./\u$0/} new value for ${1:fieldName}
       */
      public void set${1/./\u$0/}(${2:String} new${1/./\u$0/}) {
          ${1:fieldName} = new${1/./\u$0/};
      }
      // }}}

      // {{{ get${1/./\u$0/}
      /**
       * Getter for ${1:fieldName}.
       * @return ${1:fieldName}
       */
      public ${2:String} get${1/./\u$0/}() {
          return ${1:fieldName};
      }
      // }}}    

  jwh: 
    - while statement
    - |-
      while ($1) { // $2

         $0

      }
  sout: 
    - System.out.println
    - "System.out.println(\"${1:\"foo = }\");$0	

      "
  jtest: 
    - JUnit test class def
    - |-
      package `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/.[A-Za-z]*.java//g'`;


      import junit.framework.TestCase;
      import `echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//'`;


      /**
       * ${2:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/.*\.\([A-Za-z]*\).java/\1/g'`}
       *
       * @author ${4:`niutil -readprop / /users/$USER realname`}
       * @since `date +%D`
       */
      public class ${2:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/.*\.\([A-Za-z]*\).java/\1/g'`} extends TestCase {

         private ${5:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/'`}  ${6:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/' | perl -e 'print lcfirst(<>)'`};

         public ${5:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/'`} get${5:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/'`}() { return this.${6:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/' | perl -e 'print lcfirst(<>)'`}; }
         public void set${5:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/'`}(${5:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/'`} ${6:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/' | perl -e 'print lcfirst(<>)'`}) { this.${6:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/' | perl -e 'print lcfirst(<>)'`} = ${6:`echo $TM_FILEPATH |  sed 's/\//./g' | sed 's/^.//' | sed 's/.*test.//' | sed 's/Tests.java//' | sed 's/.*\.\([A-Za-z]*\)$/\1/' | perl -e 'print lcfirst(<>)'`}; }
       
         public void test$8() {
            $0
         }
      }
  jif: 
    - if statement
    - |-
      if ($1) { // $2
         $0
      }
  jelse: 
    - if/else statement
    - |+
      if ($1) { // $2

         $0

      } else { // $3

         

      }


  jpm: 
    - private method
    - |-
      /**
       * $2
       *
       * @param $4 $5
       * ${6:@return} $7
       */
      private ${1:void} $2(${3:String} $4) {

         $0

      }
  main: 
    - main
    - "public static void main(String[] args) {\n\t${1:System.exit(0)};\n}"
  jpum: 
    - public method
    - |+
      /**
       * $2
       *
       * @param $4 $5
       * ${6:@return} $7
       */
      public ${1:void} $2(${3:String} $4) {

         $0

      }


  jcout: 
    - c:out
    - "<c:out value=\"\\${$1}\"/>$0"