--- !ruby/object:SnippetSet 
package: css
snips: 
  visibility: 
    - "visibility: type (visibility)"
    - "visibility: ${1:visible/hidden/collapse};$0"
  list: 
    - "list-style-image: url (list)"
    - "list-style-image: url($1);$0"
  text: 
    - "text-shadow: color-rgb x y blur (text)"
    - "text-shadow:  rgb(${1:255},${2:255},${3:255}) ${4:10px} ${5:10px} ${6:2px};$0"
  overflow: 
    - "overflow: type (overflow)"
    - "overflow: ${1:visible/hidden/scroll/auto};$0"
  white: 
    - "white-space: normal/pre/nowrap (white)"
    - "white-space: ${1:normal/pre/nowrap};$0"
  clear: 
    - "cursor: url (cursor)"
    - "cursor: url($1);$0"
  margin: 
    - "padding-top: length (margin)"
    - "padding-top: ${1:20px};$0"
  background: 
    - "background: color image repeat attachment position (background)"
    - "background: #${1:DDD} url($2) ${3:repeat/repeat-x/repeat-y/no-repeat}
      ${4:scroll/fixed} ${5:top letft/top center/top right/center left/center
      center/center right/bottom left/bottom center/bottom right/x-% y-%/x-pos
      y-pos};$0"
  word: 
    - "word-spacing: length (word)"
    - "word-spacing: ${1:10px};$0"
  z: 
    - "z-index: index (z)"
    - "z-index: $1;$0"
  vertical: 
    - "vertical-align: type (vertical)"
    - "vertical-align:
      ${1:baseline/sub/super/top/text-top/middle/bottom/text-bottom/length/%};$0"
  marker: 
    - "marker-offset: length (marker)"
    - "marker-offset: ${1:10px};$0"
  cursor: 
    - "cursor: type (cursor)"
    - "cursor: {$1:default/auto/crosshair/pointer/move/*-resize/text/wait/help};$0"
  border: 
    - "border-right: size style color (border)"
    - "border-right: ${1:1}px ${2:solid} #${3:999};$0"
  "{": 
    - properties { } ( } )
    - "{\n\t/* $1 */\n\t$0\n"
  display: 
    - "display: block (display)"
    - "display: block;$0"
  padding: 
    - "padding: V H (padding)"
    - "padding: ${1:20px} ${2:0px};$0"
  letter: 
    - "letter-spacing: length-em (letter)"
    - "letter-spacing: $1em;$0"
  color: 
    - "color: color-rgb (color)"
    - "color: rgb(${1:255},${2:255},${3:255});$0"
  font: 
    - "font-weight: weight (font)"
    - "font-weight: ${1:normal/bold};$0"
  position: 
    - "position: type (position)"
    - "position: ${1:static/relative/absolute/fixed};$0"
  direction: 
    - "direction: ltr|rtl (direction)"
    - "direction: ${1:ltr|rtl};$0"
  float: 
    - "float: left/right/none (float)"
    - "float: ${1:left/right/none};$0"