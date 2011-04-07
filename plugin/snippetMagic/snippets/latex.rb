--- !ruby/object:SnippetSet 
package: latex
snips: 
  sub: 
    - Sub Section (sub)
    - "\\subsection{${1:subsection
      name}}\\label{sub:${2:${1/(\\w+)|\\W+/(?1:\\L$0:_)/g}}}

      "
  "$$": 
    - Displaymath ($$)
    - "\\[\n\t$TM_SELECTED_TEXT$1\n\\]"
  ssub: 
    - Sub Sub Section (ssub)
    - "\\subsubsection{${1:subsubsection
      name}}\\label{ssub:${2:${1/(\\w+)|\\W+/(?1:\\L$0:_)/g/}}}

      "
  itd: 
    - "\\item[description] (itd)"
    - "\\\\item[${1:description}] ${0:item}"
  sec: 
    - Section (sec)
    - "\\section{${1:section name}}\\label{sec:${2:${1/(\\w+)|\\W+/(?1:\\L$0:_)/g}}}

      "