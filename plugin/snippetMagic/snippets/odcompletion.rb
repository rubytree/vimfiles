--- !ruby/object:SnippetSet 
package: odcompletion
snips: 
  obs: 
    - Add observer (obs)
    - "[[NSNotificationCenter defaultCenter]
      addObserver:self\n\tselector:@selector(${1:method}:)\n\tname:${2:@\"\"}\n\tobject:${3:nil}];"
  nsms: 
    - NSMutableString (nsms)
    - NSMutableString
  rr: 
    - "[object release]; (rr)"
    - "[${1:object} release];"
  ll: 
    - NSLog(@"",obj) (ll)
    - "NSLog(@\"%@\", ${1:object});"
  "11": 
    - "[message]; (11)"
    - "[${1:object} ${2:message}];"
  awa: 
    - "- awakeFromNib (awa)"
    - "- (void)awakeFromNib\n{\n\t$0\n}\n"
  v: 
    - "- (void)decl; (v)"
    - "- (void)${1:method}${2::(id)sender};"
  ff: 
    - stringWithFormat (ff)
    - "[NSString stringWithFormat:@\"${1:%@}\"${1/([^%]|%%)*(%.)?.*/(?2:,
      :])/}$2${1/([^%]|%%)*(%.)?.*/(?2:])/}"
  dd: 
    - New NSDictionary (dd)
    - "NSDictionary *${1:dict} = [NSDictionary
      dictionaryWithObjectsAndKeys:\n\t${2:object}, ${3:key},$0\n\tnil];\n"
  nn: 
    - "[NSNumber ... (nn)"
    - "[NSNumber numberWith${1:Int}:${2:value}]"
  oe: 
    - objectEnumerator (oe)
    - objectEnumerator
  l: 
    - NSLog(@"") (l)
    - "NSLog(@\"${1:%@}\"${1/([^%]|%%)*(%.)?.*/(?2:,
      :\\);)/}$2${1/([^%]|%%)*(%.)?.*/(?2:\\);)/}"
  icf: 
    - i .. count .. for.. block (icf)
    - "unsigned int ${1:i}, ${2:count} = [${3:array} count];\nfor (${1:i} = 0; ${1:i} <
      ${2:count}; ${1:i}++)\n{\n\t$0\n}\n"
  md: 
    - NSMutableDictionary var (md)
    - NSMutableDictionary *${1:dict} = [NSMutableDictionary dictionary];
  a: 
    - "[[class alloc] init] (a)"
    - "[[${1:class} alloc] init];"
  rdef: 
    - Read defaults value (rdef)
    - "[[NSUserDefaults standardUserDefaults] ${1:bool}ForKey:@\"$2\"]$0"
  b: 
    - "- (BOOL)method (b)"
    - "- (BOOL)${1:method}\n{\n\treturn ${2:value};\n}\n"
  perf: 
    - performSelector (perf)
    - "[self performSelector:@selector(${1:method}:) withObject:${2:nil}
      afterDelay:${3:1.0}];"
  nss: 
    - NSString * (nss)
    - NSString *${1:s}
  nsma: 
    - NSMutableArray (nsma)
    - NSMutableArray
  oi: 
    - objectAtIndex (oi)
    - objectAtIndex:${1:i}
  sel: 
    - "@selector (sel)"
    - "@selector(${1:method}:)"
  ic: 
    - unsigned int i,count (ic)
    - "unsigned int ${1:i}, ${2:count} = [${3:array} count];"
  post: 
    - Post notification (post)
    - "[[NSNotificationCenter defaultCenter] postNotificationName:$1 object:self];"
  d: 
    - "- dealloc (d)"
    - "- (void)dealloc\n{\n\t[${1:ivar} release];\n\t[super dealloc];\n}\n"
  enum: 
    - NSEnumerator Loop (enum)
    - |-
      NSEnumerator *${2:${1:string}Enum} = [${3:$1Array} objectEnumerator];
      ${5:id} ${4:curr${1/(.)(.*)/\U$1\E$2/}};

      while (($4 = [$2 nextObject])) {
          $0
      }
  id: 
    - "- (id)decl; (id)"
    - "- (id)${1:method};"
  during: 
    - NS_DURING block (during)
    - "NS_DURING\n\t$0\nNS_HANDLER\nNS_ENDHANDLER"
  init: 
    - "- init (init)"
    - "- (id)init\n{\n\tif (self = [super init])\n\t{\n\t\t$0\n\t}\n\treturn
      self;\n}\n"
  can: 
    - cancel performSelector (can)
    - "[NSObject cancelPreviousPerformRequestsWithTarget:${1:self}
      selector:@selector(${2:method}:) object:${3:nil}];"
  ws: 
    - NSWorkspace (ws)
    - NSWorkspace *${1:workspace} = [NSWorkspace sharedWorkspace];
  ar: 
    - New NSArray (ar)
    - "NSArray *${1:array} = [NSArray
      arrayWithObjects:\n\t\t\t\t\t\t${2:object},$0\n\t\t\t\t\t\tnil];"
  sd: 
    - Standard user defaults (sd)
    - NSUserDefaults *${1:defaults} = [NSUserDefaults standardUserDefaults];
  "1": 
    - "[message] (1)"
    - "[${1:object} ${2:message}]"
  f: 
    - for.. block (f)
    - "for (${1:i} = 0; ${1:i} < ${2:count}; ${1:i}++)\n{\n\t$0\n}\n"
  ok: 
    - objectForKey (ok)
    - "objectForKey:"
  nsa: 
    - NSArray * (nsa)
    - NSArray *${1:array}
  nsmd: 
    - NSMutableDictionary (nsmd)
    - NSMutableDictionary
  wdef: 
    - Write to defaults (wdef)
    - "[[NSUserDefaults standardUserDefaults] setObject:${1:object} forKey:${2:key}];"
  fm: 
    - Default file manager (fm)
    - NSFileManager *${1:fm} = [NSFileManager defaultManager];
  ro: 
    - Remove observer (ro)
    - "[[NSNotificationCenter defaultCenter] removeObserver:self];"
  iba: 
    - "- (IBAction)method (iba)"
    - "- (IBAction)${1:method}:(id)sender\n{\n\t$0\n}\n"
  ma: 
    - NSMutableArray var (ma)
    - NSMutableArray *${1:array} = [NSMutableArray array];
  nsn: 
    - NSNumber * (nsn)
    - NSNumber *${1:number}
  nsd: 
    - NSDictionary * (nsd)
    - NSDictionary *${1:dict}
  i: 
    - "- (int)method (i)"
    - "- (int)${1:method}\n{\n\treturn ${2:value};\n}\n"