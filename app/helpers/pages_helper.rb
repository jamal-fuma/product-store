module PagesHelper
  include PageHelpers

  def pages_breadcrumb(page,opts={})
    opts[:class]    ||= 'crumb'
    ret = link_to('Pages', pages_path)
    unless page.parent.nil?
      ret << " &gt; #{link_to(h(page.parent.name),page.parent)}"
    end
    ret << " &gt; #{link_to(h(page.name),page)}"
    end
    return ret
  end

# title row for lists of pages
def page_heading_helper(opts={})
  opts[:class]    ||= 'row'
  opts[:wrapper]  ||= 'header'
  content = ""
  content << column_title_helper(:checkbox => opts[:checkbox],:id=>opts[:id])
  content << column_helper(:class => 'page col-description', :content=>"Description")
  content << column_helper(:class =>'page col-quantity', :content => 'Pages')
  content << column_helper(:class =>'page col-quantity', :content => 'Images')
  content << column_helper(:class =>'page col-quantity', :content=>'Products')
  content << column_helper(:class =>'page col-image', :content=>'Picture')
  content = content_tag('dl',content,:class => opts[:class])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of pages
def page_row_helper(page,opts={})
  opts[:class] ||= 'row'
  photo_opts={:class=>'page col-image', :content => link_to('Add image..',page_images_path(page))}
  if opts[:image] 
    photo_opts[:image] = opts[:image]
  end

  # this make inline editing work 
  @page = page
  content = column_helper :class => 'page col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'page_ids',
      :element_value    =>  page.id,
      :element_default  =>  true,
      :element_link     =>  link_to(h(page.name),page)
    })

  content << column_helper(:class => 'page col-description', :content=>in_place_editor_field(@page, :description,{}, {:rows => 5} ))
  content << column_helper(:class => 'page col-quantity', :content=>link_to( page.children.size,page_path(page)))
  content << column_helper(:class => 'page col-quantity', :content=>link_to(page.images.size,page_images_path(page)))
  content << column_helper(:class => 'page col-quantity', :content=>link_to(page.products.size,page_products_path(page)))
  content << photo_column_helper(page.images, :image => opts[:image],:class=>'page col-image', :content => link_to('Add image..',page_images_path(page)))

  content_tag('dl',content,:class => opts[:class])
end

def page_links(page)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h page.name}", edit_page_path(page))}</li>
      <li>#{button_to("Delete #{h page.name}", page, :method => :delete, :title =>"Delete #{h page.name}")}</li>
    </ul>
    </div>
    EOS
  end
end

def pages_list_helper(pages,reorder_url)
  side_menu_helper pages
  content_for :page_list_footer do 
    will_paginate pages if pages.respond_to? :total_pages
  end
  render  :partial => 'pages/results',:locals  => { :pages => pages, :reorder_url =>reorder_url }
end

def new_page_link_helper(opts={:update=>'all_pages'})
  link_to_remote('New Page', 
        { 
        :url      => new_page_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_page_path) 
end

def remove_page_helper(list,url,action,opts={})
  opts[:id]       ||= 'pages_list' 
  opts[:form_id]  ||= 'remove-product-page-form'
  opts[:form_class]  ||= 'button'
  
  content_for(:page_list_footer){ will_paginate(list) }
  form_tag(action,:method => :delete,
              :id=>opts[:form_id],
              :class=>opts[:form_class]){pages_list_helper(list,url)  }
end

end
