--- !ruby/object:SnippetSet 
package: text
snips: 
  lorem: 
    - Lorem ipsum (lorem)
    - "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
      incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
      nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
      fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
      culpa qui officia deserunt mollit anim id est laborum.

      "
  c): 
    - Copyright Notice
    - "(c) Copyright `date +%Y` `niutil -readprop / /users/$USER realname`. All Rights
      Reserved. "
  isoD: 
    - Current Date — YYYY-MM-DD (isoD)
    - "`date +%Y-%m-%d`"