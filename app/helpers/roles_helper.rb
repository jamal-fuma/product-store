module RolesHelper
  def role_heading_helper(opts={})
  opts[:id]    ||= 'toggle_roles'
  opts[:class]    ||= 'col-name'
  opts[:row]    ||= 'row'
  opts[:wrapper]  ||= 'header' 
  content = ""
  content << column_title_helper(:id => opts[:id],:class =>'role col-name',:checkbox => opts[:checkbox]) 
  content << column_helper(:class =>'role col-description', :content => 'Description')
  content = content_tag('dl',content,:class => opts[:row])
  content_tag('div',content,:class =>opts[:wrapper])
end

  def role_row_helper(role,opts={})
  opts[:class] ||= 'row'
  # this make inline editing work 
  @role = role
  content = column_helper :class => 'role col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'role_ids',
      :element_value    =>  role.id,
      :element_default  =>  false,
      :element_link     =>  link_to(h(role.name),role)
    })
    content << column_helper(:class => 'role col-description', 
                             :content=>in_place_editor_field(@role, :description,{}, {:rows=>3} ))
    content_tag('dl',content,:class => opts[:class])
end


def edit_role_link_helper(role,opts={:update=>'all_roles'})
  link_to_remote('Edit Role', 
        { 
        :url      => edit_role_path(role), 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => edit_role_path(role)) 
end

def role_links(role)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h role.name}", edit_role_path(role))}</li>
      <li>#{button_to("Delete #{h role.name}", role, :method => :delete,:title =>"Delete #{h role.name}")}</li>
    </ul>
    EOS
  end
end
def roles_list_helper(roles)
  side_menu_helper roles
  content_for :role_list_footer do 
    will_paginate roles if roles.respond_to? :total_pages
  end
  render  :partial => 'roles/results',:locals  => { :roles => roles }
end

def new_role_link_helper(opts={:update=>'all_roles'})
  link_to_remote('New Role', 
        { 
        :url      => new_role_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_role_path) 
end
end
