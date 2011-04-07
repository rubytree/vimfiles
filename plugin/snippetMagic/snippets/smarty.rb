--- !ruby/object:SnippetSet 
package: smarty
snips: 
  "{cycle": 
    - Cycle ({cycle)
    - "{cycle values=\"#SELSTART#foo,bar#SELEND#\" name=\"default\" print=true
      advance=true delimiter=\",\" assign=varname }"
  "|regex_replace": 
    - Regex Replace (|regex_replace)
    - "|regex_replace:\"${1:regex}\":\"$2\" "
  "|count_words": 
    - Count Words (|count_words)
    - "|count_words"
  "{counter": 
    - Counter ({counter)
    - >-
      {counter name="#INSERTION#" start=1 skip=1 direction="up" print=true
      assign="foo" }

      {counter}

  "{eval": 
    - Eval ({eval)
    - "{eval var=\"#SELSTART#{template_format}#SELEND#\" assign=varname} "
  "|nl2br": 
    - nl2br (|nl2br)
    - "|nl2br"
  "|date_format": 
    - Date Format (|date_format)
    - "|date_format:\"${1:strftime() formatting}\" "
  "|truncate": 
    - Truncate (|truncate)
    - "|truncate:${1:80}:${2:\"&hellip;\"}:${3:false}"
  "{if": 
    - If ({if)
    - >-
      {if ${1:varname}${2:eq,neq,gt,lt,gte,lte,is [not] even|odd,not,mod,div by}
      "${3:foo}"}

      {* $varname can also be a php call *}

      $4

      {/if}

  "|string_format": 
    - String Format (|string_format)
    - "|string_format:\"${1:sprintf formatting}\" "
  "{assign": 
    - Assign ({assign)
    - "{assign var=$1 value=\"$2\"}"
  "|count_sentences": 
    - Count Sentences (|count_sentences)
    - "|count_sentences"
  "{foreach": 
    - Foreach ({foreach)
    - >-
      {foreach from=${1:$varname} item=i [key=k name=""] }

      $2

      {/foreach}

  "{capture": 
    - Capture ({capture)
    - >-
      {capture name=#INSERTION#}

      #SELECT#

      {/capture}

  "|count_characters": 
    - Count Characters (|count_characters)
    - "|count_characters"
  "|wordwrap": 
    - Word Wrap (|wordwrap)
    - "|wordwrap:${1:80}:\"${2:\\n}\":${3:false}"
  "|spacify": 
    - Spacify (|spacify)
    - "|spacify:\"${1: }\" "
  "|default": 
    - Default (|default)
    - "|default:\"$1\" "
  "{debug": 
    - Debug ({debug)
    - "{debug output=\"#SELSTART#html|javascript#SELEND#\" } "
  "|upper": 
    - Upper (|upper)
    - "|upper"
  "|replace": 
    - Replace (|replace)
    - "|replace:\"${1:needle}\":\"$2\" "
  "{rdelim": 
    - Rdelim ({rdelim)
    - "{rdelim}"
  "{include": 
    - Include ({include)
    - "{include file=\"$1\" [assign=varname foo=\"bar\"] }"
  "|escape": 
    - Escape (|escape)
    - "|escape:\"${1:html|htmlall|url|quotes|hex|hexentity|javascript}\" "
  "{strip": 
    - Strip ({strip)
    - >-
      {strip}

      $1

      {/strip}

  "{math": 
    - Math ({math)
    - "{math equation=\"${1:1+x}\" assign=$2 ${3:x=8}} "
  "|indent": 
    - Indent (|indent)
    - "|indent:${1:4}[:\"\"]"
  "{config_load": 
    - Config Load ({config_load)
    - "{config_load file=\"#INSERTION#\" [section=\"\" scope=\"local|parent|global\"]
      }"
  "{ldelim": 
    - Ldelim ({ldelim)
    - "{ldelim}"
  "|cat": 
    - Cat (|cat)
    - "|cat:\"${1:text to add}\""
  "{foreachelse": 
    - Foreachelse ({foreachelse)
    - "{foreachelse}"
  "|capitalize": 
    - Capitalize (|capitalize)
    - "|capitalize"
  "{insert": 
    - Insert ({insert)
    - "{insert name=\"insert_$1\" [assign=varname script=\"foo.php\" foo=\"bar\"] }"
  "{fetch": 
    - Fetch ({fetch)
    - "{fetch file=\"#SELSTART#http:// or file#SELEND#\" assign=varname} "
  "{literal": 
    - Literal ({literal)
    - >-
      {literal}

      $1

      {/literal}

  "|lower": 
    - Lower (|lower)
    - "|lower"
  "{include_php": 
    - Include PHP ({include_php)
    - "{include_php file=\"$1\" [once=true foo=\"bar\"] }"
  "|count_paragraphs": 
    - Count Paragraphs (|count_paragraphs)
    - "|count_paragraphs"
  "|strip": 
    - Strip (|strip)
    - "|strip:[\"${1: }\"]"
  "|strip_tags": 
    - Strip Tags (|strip_tags)
    - "|strip_tags "