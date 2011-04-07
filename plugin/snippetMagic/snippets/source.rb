--- !ruby/object:SnippetSet 
package: source
snips: 
  head: 
    - Source Code Header (head)
    - >
      //

      //  ${TM_FILENAME:«file»}

      //  ${TM_PROJECT_DIRECTORY/(.*\/(.+))?/(?2:$2:«project»)/}

      //

      //  Created by `niutil -readprop / /users/$USER realname` on `date +%Y-%m-%d`.

      //  Copyright (c) `date +%Y` $TM_ORGANIZATION_NAME. All rights reserved.

      //
