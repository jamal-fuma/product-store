module CommentsHelper
# title row for lists of comments
def comment_heading_helper(opts={})
  opts[:id]       ||= 'toggle_comments'
  opts[:class]    ||= 'comment col-name'
  opts[:row]      ||= 'row'
  opts[:wrapper]  ||= 'header'
  opts[:title]    ||= 'Bug Title'
  content = ""
  content << column_helper(:class =>'comment col-reporter', :content=>'By')
  content << column_helper(:class =>'comment col-description', :content => "Comments")
  content = content_tag('dl',content,:class => opts[:row])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of comments
def comment_row_helper(comment,opts={})
  opts[:class] ||= 'row'
  
  # this make inline editing work 
  @comment = comment
  
   content = checkbox_helper(opts[:checkbox], {
      :element_id       =>  'comment_ids',
      :element_value    =>  comment.id,
      :element_default  =>  true,
      :element_link     =>  link_to(h(comment.detail.capitalize),bug_path(comment.bug))
    })
  
    content = column_helper(:class =>'comment col-reporter', :content => "posted by #{@comment.user.login}")
    content << column_helper( :class => 'comment col-description', :content => h(comment.detail.capitalize))
    content_tag('dl',content,:class => opts[:class])
end

def edit_comment_link_helper(bug,opts={:update=>'all_comments'})
  link_to_remote('Edit Comment', 
        { 
        :url      => edit_bug_comment_path(bug), 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => edit_bug_comment_path(bug))
end


def comment_links(comment)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h comment.detail.capitalize.truncate}", edit_bug_comment_path(comment))}</li>
      <li>#{button_to("Delete #{h comment.detail.capitalize.truncate}", bug_comment_url(bug), :method => :delete,:title =>"Delete #{h comment.title}")}</li>
    </ul>
    EOS
  end
end

def comments_list_helper(bug,comments)
  side_menu_helper [bug], :method => :title
  content_for(:comment_list_footer) do
    (comments.respond_to?(:total_pages))? will_paginate(comments) : ""
  end
  render  :partial => 'comments/results',:locals  => { :comments => comments, :bug => bug }
end

def new_comment_link_helper(bug,opts={:update=>'all_comments'})
  link_to_remote('New Comment', 
        { 
        :url      => new_bug_comment_path(bug), 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_bug_comment_path(bug))
 
end

end
