--- !ruby/object:SnippetSet 
package: template toolkit
snips: 
  wrap: 
    - wrapper
    - |-
      [% WRAPPER ${1:template} %]
          $0
      [% END %]
  if: 
    - if
    - |-
      [% IF ${1:condition} %]
          $0
      [% ELSE %]

      [% END %]
  unl: 
    - unless
    - |-
      [% UNLESS ${1:condition} %]
          $0
      [% END %]
  inc: 
    - include
    - "[% INCLUDE ${1:template} %]"
  for: 
    - for
    - |-
      [% FOR ${1:var} IN ${2:set} %]
          $0
      [% END %]