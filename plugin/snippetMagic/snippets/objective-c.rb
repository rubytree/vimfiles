--- !ruby/object:SnippetSet 
package: objective-c
snips: 
  cat: 
    - Category (cat)
    - >-
      @interface ${1:NSObject} (${2:Category})

      @end


      @implementation ${1:NSObject} (${2:Category})

      $0

      @end

  delacc: 
    - Delegate Accessors Interface (delacc)
    - >
      - (id)delegate;

      - (void)setDelegate:(id)delegate;

  ibo: 
    - IBOutlet (ibo)
    - IBOutlet ${1:${2:NSSomeClass} *}${3:someClass};
  dict: 
    - NSDictionary (dict)
    - NSMutableDictionary *${1:dict} = [NSMutableDictionary dictionary];
  Imp: 
    - "#import <..> (Imp)"
    - "#import <$1.h>"
  objc: 
    - Class (objc)
    - "@interface ${1:class} : ${2:NSObject}\n{\n}\n@end\n\n@implementation
      ${1:class}\n- (id)init\n{\n\tself = [super init];\n\tif(self !=
      nil)\n\t{$0\n\t}\n\treturn self;\n}\n@end\n"
  imp: 
    - "#import \"..\" (imp)"
    - "#import \"$1.h\""
  bez: 
    - NSBezierPath (bez)
    - >-
      NSBezierPath *${1:path} = [NSBezierPath bezierPath];

      $0

  acc: 
    - Scalar Accessors Implementation (acc)
    - "- (${1:unsigned int})${2:thing}\n{\n\treturn ${3:fThing};\n}\n\n-
      (void)set${2/./\\u$0/}:(${1:unsigned int})new${2/./\\u$0/}\n{\n\t${3:fThing} =
      new${2/./\\u$0/};\n}\n"
  format: 
    - NSString stringWithFormat (format)
    - "[NSString stringWithFormat:@\"$1\", $2]$0"
  M: 
    - Class Method Implementation (M)
    - "+
      (${1:id})${2:method}${3::(${4:id})${5:${4/(NS([AEIOQUY])?(\\w+).*)|(.)?.*/(?1:a(?2:n$2)$3:(?4:anArgument))/}}}\n{$0${1/^(void|IBAction)$|(.*)/(?2:\n\treturn
      nil;)/}\n}"
  m: 
    - Method Implementation (m)
    - "-
      (${1:id})${2:method}${3::(${4:id})${5:${4/(NS([AEIOQUY])?(\\w+).*)|(.)?.*/(?1:a(?2:n$2)$3:(?4:anArgument))/}}}\n{$0${1/^(void|IBAction)$|(.*)/(?2:\n\treturn
      nil;)/}\n}"
  focus: 
    - Lock Focus (focus)
    - >-
      [self lockFocus];

      $0

      [self unlockFocus];

  setprefs: 
    - Write Defaults Value (setprefs)
    - "[[NSUserDefaults standardUserDefaults] setObject:${1:object} forKey:${2:key}];"
  log: 
    - "NSLog(.., _cmd) (log)"
    - "NSLog(@\"%s$1\", _cmd${1/[^%]*(%)?.*/(?1:,
      :\\);)/}$2${1/[^%]*(%)?.*/(?1:\\);)/}"
  sm: 
    - Sub-method Implementation (sm)
    - "-
      (${1:id})${2:method}${3::(${4:id})${5:${4/(NS([AEIOQUY])?(\\w+).*)|(.)?.*/(?1:a(?2:n$2)$3:(?4:anArgument))/}}}\n{\n\t${1/^(void|IBAction)$|(.*)/(?2:$2
      res = )/}[super
      ${2:method}${5/.+/:$0/}];$0${1/^(void|IBAction)$|(.*)/(?2:\n\treturn res;)/}\n}"
  arracc: 
    - LoD Array Implementation (arracc)
    - "- (void)add${1:Thing}:(${2:id})${3:thing}\n{\n\t[${4:array} addObject:
      ${3:thing}];\n}\n\n- (void)insert${1:Thing}:(${2:id})${3:thing}
      atIndex:(unsigned int)i \n{\n\t[${4:array} insertObject: ${3:thing} atIndex:
      i];\n}\n\n- (${2:id})${3:thing}AtIndex:(unsigned int)i\n{\n\treturn [${4:array}
      objectAtIndex: i];\n}\n\n- (unsigned
      int)indexOf${1:Thing}:(${2:id})${3:thing}\n{\n\treturn [${4:array}
      indexOfObject: ${3:thing}];\n}\n\n- (void)remove${1:Thing}AtIndex:(unsigned
      int)i\n{\n\t[${4:array} removeObjectAtIndex: i];\n}\n\n- (NSArray
      *)${3:thing}s\n{\n\treturn ${4:array};\n}\n\n- (void)set${1:Thing}s:(NSArray
      *)new${1:Thing}s\n{\n\t[${4:array} setArray: new${1:Thing}s];\n}\n"
  gsave: 
    - Save and Restore Graphics Context (gsave)
    - "[NSGraphicsContext saveGraphicsState];\n\t$0\n[NSGraphicsContext
      restoreGraphicsState];\n"
  forarray: 
    - NSArray Loop (forarray)
    - "for(unsigned int index = 0; index < [${1:array} count]; index +=
      1)\n{\n\t${2:id}\tobject = [${1:array} objectAtIndex:index];\n\t$4\n}"
  delegate: 
    - Delegate Responds to Selector (delegate)
    - |-
      ${TM_COMMENT_START} ${4:Send ${2/\s*//g} to delegate, if it implements it}${TM_COMMENT_END}
      if ([${1:[self delegate]} respondsToSelector:@selector(${2:selfDidSomething:})])
      {
          [$1 ${3:${2/((^\s*([A-Za-z0-9_]*:)\s*)|(:\s*$)|(:\s*))/(?2:$2self :\:<>)(?4::)(?5: :)/g}}];
      }
  classi: 
    - Class Interface (classi)
    - >
      @interface ${1:ClassName} : ${2:NSObject}

      {$3

      }

      $0

      @end

  bind: 
    - Key/Value Binding (bind)
    - bind:@"${2:binding}" toObject:${3:observableController} withKeyPath:@"${4:keyPath}" options:${5:nil}
  array: 
    - NSArray (array)
    - NSMutableArray *${1:array} = [NSMutableArray array];
  getprefs: 
    - Read Defaults Value (getprefs)
    - "[[NSUserDefaults standardUserDefaults] objectForKey:${1:key}];"
  cati: 
    - Category Interface (cati)
    - >-
      @interface ${1:NSObject} (${2:Category})

      $0

      @end

  responds: 
    - Responds to Selector (responds)
    - |-
      ${TM_COMMENT_START} ${4:Send $2 to $1, if $1 supports it}${TM_COMMENT_END}
      if ([${1:self} respondsToSelector:@selector(${2:someSelector:})])
      {
          [$1 ${3:${2/((:\s*$)|(:\s*))/:<>(?3: )/g}}];
      }
  stracc: 
    - String Accessors Interface (stracc)
    - >
      - (NSString *)${1:thing};

      - (void)set${1/./\u$0/}:(NSString *)$1;

  objacc: 
    - Object Accessors Interface (objacc)
    - >
      - (${1:id})${2:thing};

      - (void)set${2/./\u$0/}:($1)aValue;

  alert: 
    - NSRunAlertPanel (alert)
    - "int choice = NSRunAlertPanel(@\"${1:Something important!}\", @\"${2:Something
      important just happend, and now I need to ask you, do you want to continue?}\",
      @\"${3:Continue}\", @\"${4:Cancel}\", nil);\nif(choice == NSAlertDefaultReturn)
      // \"${3:Continue}\"\n{\n\t$0;\n}\nelse if(choice == NSAlertAlternateReturn) //
      \"${4:Cancel}\"\n{\n\t\n}"