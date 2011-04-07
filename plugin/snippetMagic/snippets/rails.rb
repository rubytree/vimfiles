--- !ruby/object:SnippetSet 
package: rails
snips: 
  mrnt: 
    - Migration Rename Table (mrnt)
    - "rename_table \"${1:old_table_name}\", \"${2:new_table_name}\""
  rfu: 
    - render (file,use_full_path)… (rfu)
    - "render :file => \"${1:filepath}\", :use_full_path => ${2:false}"
  rns: 
    - render (nothing,status)… (rns)
    - "render :nothing => ${1:true}, :status => ${2:401}"
  ri: 
    - render (inline)… (ri)
    - "render :inline => \"${1:<%= 'hello' %>}\""
  rt: 
    - render (text)… (rt)
    - render :text => "${1:text to render...}"
  mcc: 
    - Migration Create Column (mcc)
    - "t.column \"${1:title}\", :${2:string}"
  rpl: 
    - render (partial,locals)… (rpl)
    - "render :partial => \"${1:item}\", :locals => { :${2:name} => \"${3:value}\"$4 }"
  rea: 
    - redirect_to (action)… (rea)
    - redirect_to :action => "${1:index}"
  rtlt: 
    - render (text,layout => true)… (rtlt)
    - "render :text => \"${1:text to render...}\", :layout => ${2:true}"
  ft: 
    - "erb: form_tag (ft)"
    - "<%= form_tag :action => \"${1:update}\" %>"
  forin: 
    - "erb: for .. in .. end… (forin)"
    - "<% for ${1:item} in ${2:@items} %>\n\t<%= ${1:item}.${0:name} %>\n<% end %>"
  lia: 
    - "erb: link_to (action)… (lia)"
    - "<%= link_to \"${1:link text...}\", :action => \"${2:index}\" %>"
  rl: 
    - render (layout)… (rl)
    - render :layout => "${1:layoutname}"
  ra: 
    - render (action)... (ra)
    - render :action => "${1:action}"
  mrnc: 
    - Migration Rename Column (mrnc)
    - "rename_column \"${1:table}\", \"${2:old_column_name}\",
      \"${3:new_column_name}\""
  mac: 
    - Migration Add Column (mac)
    - "add_column \"${1:table}\", \"${2:column}\", :${3:string}"
  rpc: 
    - render (partial,collection)… (rpc)
    - "render :partial => \"${1:item}\", :collection => ${2:items}"
  rec: 
    - redirect_to (controller)… (rec)
    - redirect_to :controller => "${1:items}"
  rn: 
    - render (nothing)… (rn)
    - render :nothing => ${1:true}
  lic: 
    - "erb: link_to (controller)… (lic)"
    - "<%= link_to \"${1:link text...}\", :controller => \"${2:items}\" %>"
  rpo: 
    - render (partial,object)… (rpo)
    - "render :partial => \"${1:item}\", :object => ${2:object}"
  rts: 
    - render (text,status)… (rts)
    - "render :text => \"${1:text to render...}\", :status => ${2:401}"
  rcea: 
    - render_component (action)… (rcea)
    - render_component :action => "${1:index}"
  recai: 
    - "redirect_to (controller, action, id)… (recai)"
    - "redirect_to :controller => \"${1:items}\", :action => \"${2:show}\", :id =>
      ${0:@item}"
  mcdt: 
    - Migration Create and Drop Table (mcdt)
    - |-
      create_table "${1:table}" do |t|
          $0
      end
      ${2:drop_table "$1"}
  ral: 
    - render (action,layout)… (ral)
    - "render :action => \"${1:action}\", :layout => \"${2:layoutname}\""
  rit: 
    - render (inline,type)… (rit)
    - "render :inline => \"${1:<%= 'hello' %>}\", :type => ${2::rxml}"
  rceca: 
    - "render_component (controller, action)… (rceca)"
    - "render_component :controller => \"${1:items}\", :action => \"${2:index}\""
  licai: 
    - "erb: link_to (controller, action, id)… (licai)"
    - "<%= link_to \"${1:link text...}\", :controller => \"${2:items}\", :action =>
      \"${3:edit}\", :id => ${4:@item} %>"
  verify: 
    - "verify - render (verify)"
    - "verify :only => [:$1], :method => :post, :render => {:status => 500, :text =>
      \"use HTTP-POST\"}

      "
  mdt: 
    - Migration Drop Table (mdt)
    - drop_table "${1:table}"
  rp: 
    - render (partial)… (rp)
    - render :partial => "${1:item}"
  rcec: 
    - render_component (controller)… (rcec)
    - render_component :controller => "${1:items}"
  mrc: 
    - Migration Remove Column (mrc)
    - "remove_column \"${1:table}\", \"${2:column}\""
  mct: 
    - Migration Create Table (mct)
    - |-
      create_table "${1:table}" do |t|
          $0
      end
  flash: 
    - flash[…] (flash)
    - flash[:${1:notice}] = "${2:Successfully created...}"$0
  rf: 
    - render (file)… (rf)
    - render :file => "${1:filepath}"
  lica: 
    - "erb: link_to (controller, action)… (lica)"
    - "<%= link_to \"${1:link text...}\", :controller => \"${2:items}\", :action =>
      \"${3:index}\" %>"
  liai: 
    - "erb: link_to (action, id)… (liai)"
    - "<%= link_to \"${1:link text...}\", :action => \"${2:edit}\", :id => ${3:@item}
      %>"
  reai: 
    - "redirect_to (action, id)… (reai)"
    - "redirect_to :action => \"${1:show}\", :id => ${0:@item}"
  logi: 
    - logger.info (logi)
    - logger.info "${1:Current value is...}"
  marc: 
    - Migration Add and Remove Column (marc)
    - >-
      add_column "${1:table}", "${2:column}", :${3:string}

      ${4:remove_column "$1", "$2"}

  rps: 
    - render (partial,status)… (rps)
    - "render :partial => \"${1:item}\", :status => ${2:500}"
  ril: 
    - render (inline,locals)… (ril)
    - "render :inline => \"${1:<%= 'hello' %>}\", :locals => { ${2::name} =>
      \"${3:value}\"$4 }"
  rtl: 
    - render (text,layout)… (rtl)
    - "render :text => \"${1:text to render...}\", :layout => \"${2:layoutname}\""
  reca: 
    - "redirect_to (controller, action)… (reca)"
    - "redirect_to :controller => \"${1:items}\", :action => \"${2:list}\""
  rim: 
    - image_tag (imagetag)
    - "<%= image_tag ('$1') %> $0"

  "<%": 
    - <% %> 
    - "<% $1 %> $0"

  "<%=": 
    - <%= %> 
    - "<%= $1 %> $0"
