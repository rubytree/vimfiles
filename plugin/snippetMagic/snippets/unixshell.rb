--- !ruby/object:SnippetSet 
package: unixshell
snips: 
  "!env": 
    - "#!/usr/bin/env (!env)"
    - "#!/usr/bin/env ${1:${TM_SCOPE/(?:source|.*)\\.(\\w+).*/$1/}}"
  if: 
    - if .. then (if)
    - "if [[ ${1:condition} ]]; then\n\t$0\nfi"
  elif: 
    - elif .. (elif)
    - "elif [[ ${1:condition} ]]; then\n\t$0"
  for: 
    - for .. done (for)
    - "for (( ${1:i = 0}; ${2:i < 10}; ${3:i++} )); do\n\t$0\ndone"