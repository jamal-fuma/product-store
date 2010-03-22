module BugsHelper
# title row for lists of bugs
def bug_heading_helper(opts={})
  opts[:id]    ||= 'toggle_bugs'
  opts[:class]    ||= 'bug col-name'
  opts[:row]    ||= 'row'
  opts[:wrapper]  ||= 'header' 
  content = ""
  content << column_title_helper(:id => opts[:id],:class =>'bug col-name',:checkbox => opts[:checkbox], :method => :title) 
  content << column_helper(:class =>'bug col-name', :content=>'Title')
  content << column_helper(:class =>'bug col-name', :content=>'Reported by')
  content << column_helper(:class =>'bug col-quantity', :content=>'Comments')
  content << column_helper(:class =>'bug col-quantity', :content=>'Status')
  content = content_tag('dl',content,:class => opts[:row])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of bugs
def bug_row_helper(bug,opts={})
  opts[:class] ||= 'row'
  
  # this make inline editing work 
  @bug = bug
  content = column_helper :class => 'bug col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'bug_ids',
      :element_value    =>  bug.id,
      :element_default  =>  true,
      :element_link     =>  link_to(h(bug.title),bug)
    })
    
    content << column_helper(:class =>'bug col-name', :content =>in_place_editor_field(@bug, :title,{}, {}))
    content << column_helper(:class =>'bug col-name', :content => @bug.user.login)
    content << column_helper(:class =>'bug col-quantity', :content=>link_to(@bug.comments.size,bug_comments_path(@bug)))
    content << column_helper(:class =>'bug col-quantity', :content =>@bug.human_readable_status)
    content << column_helper(:class => 'bug spacer', :content=>in_place_editor_field(@bug, :description,{}, {:rows=>3} ))
    content_tag('dl',content,:class => opts[:class])
end

def edit_bug_link_helper(bug,opts={:update=>'all_bugs'})
  link_to_remote 'Edit Bug', 
  { :url =>  edit_bug_path(bug) ,
    :method => :get,
    :update => 'all_bugs', 
    :position => :top
  }, 
  :href => edit_bug_path(bug)
end

def bug_links(bug)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h bug.title.capitalize}", edit_bug_path(bug))}</li>
      <li>#{button_to("Delete #{h bug.title.capitalize}", bug, :method => :delete,:title =>"Delete #{h bug.title}")}</li>
    </ul>
    EOS
  end
end

def bugs_list_helper(bugs)
  side_menu_helper bugs, :method => :title
  content_for(:bug_list_footer) do
    (bugs.respond_to?(:total_pages))? will_paginate(bugs) : ""
  end
  render  :partial => 'bugs/results',:locals  => { :bugs => bugs }
end

def new_bug_link_helper(opts={:update=>'all_bugs'})
  link_to_remote('New Bug', 
        { 
        :url      => new_bug_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_bug_path) 
end

end
