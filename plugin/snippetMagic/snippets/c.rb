--- !ruby/object:SnippetSet 
package: c
snips: 
  do: 
    - do .. while (do)
    - "do\n{\n\t$0\n} while( $1 );"
  while: 
    - while .. (while)
    - "while( $1 ) {\n\t$0\n} "
  cout: 
    - cout .. (while)
    - "std::cout << $1;\n $0"
  coutend: 
    - cout .. (while)
    - "std::cout << $1 << endl;\n $0"
  readfile: 
    - Read File Into Vector (readfile)
    - "std::vector<uint8_t> v;\nif(FILE* fp = fopen(${1:\"filename\"},
      \"r\"))\n{\n\tuint8_t buf[1024];\n\twhile(size_t len = fread(buf, 1,
      sizeof(buf), fp))\n\t\tv.insert(v.end(), buf, buf + len);\n\tfclose(fp);\n}"
  beginend: 
    - "$1.begin(), $1.end() (beginend)"
    - "${1:v}.begin(), ${1:v}.end()"
  once: 
    - Header Include-Guard (once)
    - "#ifndef _$1_\n#define _$1_\n\n$0\n\n#endif /* _$1_ */"

  class: 
    - class .. (class)
    - "class ${1:} {\npublic:\n\t /* Constructors/destructors */ \n\t${1:} ();\n${2:}\n\tvirtual ~${1:}();
  \n\t/* Public properties */ 
  \n\t/* Public access methods */
  \n\t/* Public methods */
      \n\nprivate:\n\t/* Private properties */\n\n\t${0:}\n\n\t/* Private methods */\n};"
  printf: 
    - printf .. (printf)
    - "printf(\"${1:%s}\\\\n\"${1/([^%]|%%)*(%.)?.*/(?2:,
      :\\);)/}$2${1/([^%]|%%)*(%.)?.*/(?2:\\);)/}"
  vector: 
    - std::vector (vector)
    - std::vector<${1:char}> v$0;
  struct: 
    - struct .. (struct)
    - "struct ${1:}\n{\n\t${0:}\n};"
  template: 
    - template <typename ..> (template)
    - template <typename ${1:_InputIter}>
  namespace: 
    - namespace .. (namespace)
    - "namespace ${1:${TM_FILENAME/(.*?)\\..*/\\L$1/}}\n{\n\t$0\n};\n"
  map: 
    - std::map (map)
    - "std::map<${1:key}, ${2:value}> map$0;"
  mark: 
    - "#pragma mark (mark)"
    - >2-
      #if 0

      ${1:#pragma mark -

      }#pragma mark $2

      #endif


      $0

  if: 
    - if .. (if)
    - "if(${1:condition}) {\n\t$0\n}"
  ife: 
    - if .. (if)
    - "if(${1:}) {\n\t$0\n} else { \n\t }"
  main: 
    - main() (main)
    - "int main (int argc, char const* argv[])\n{\n\t$0\n\treturn 0;\n}"
  Inc: 
    - "#include <..> (Inc)"
    - "#include <${1:}>"
  inc: 
    - "#include \"..\" (inc)"
    - "#include \"$1\""
  for: 
    - for loop (for)
    - "for( ${1: register unsigned int} ${2:i} = ${3:0}; ${2:i} < ${4:count}; ++${2:i} 
      ) {\n\t$0\n}"
