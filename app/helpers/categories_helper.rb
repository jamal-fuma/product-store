module CategoriesHelper
  include PageHelpers
  def categories_breadcrumb(category)
   ret = link_to('Categories', categories_path)
   unless category.parent.nil?
      ret << " &gt; #{link_to(h(category.parent.name),category.parent)}"
    end
    ret << " &gt; #{link_to(h(category.name),category)}"
    return ret
  end


# title row for lists of categories
def category_heading_helper(opts={})
  opts[:class]    ||= 'row'
  opts[:wrapper]  ||= 'header'
  content = ""
  content << column_title_helper(:checkbox => opts[:checkbox],:id=>opts[:id])
  content << column_helper(:class => 'category col-description', :content=>"Description")
  content << column_helper(:class =>'category col-quantity', :content => 'Categories')
  content << column_helper(:class =>'category col-quantity', :content => 'Images')
  content << column_helper(:class =>'category col-quantity', :content=>'Products')
  content << column_helper(:class =>'category col-image', :content=>'Picture')
  content = content_tag('dl',content,:class => opts[:class])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of categories
def category_row_helper(category,opts={})
  opts[:class] ||= 'row'
  photo_opts={:class=>'category col-image', :content => link_to('Add image..',category_images_path(category))}
  if opts[:image] 
    photo_opts[:image] = opts[:image]
  end

  # this make inline editing work 
  @category = category
  content = column_helper :class => 'category col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'category_ids',
      :element_value    =>  category.id,
      :element_default  =>  true,
      :element_link     =>  link_to(h(category.name),category)
    })

  content << column_helper(:class => 'category col-description', :content=>in_place_editor_field(@category, :description,{}, {:rows => 5} ))
  content << column_helper(:class => 'category col-quantity', :content=>link_to( category.children.size,category_path(category)))
  content << column_helper(:class => 'category col-quantity', :content=>link_to(category.images.size,category_images_path(category)))
  content << column_helper(:class => 'category col-quantity', :content=>link_to(category.products.size,category_products_path(category)))
  content << photo_column_helper(category.images, :image => opts[:image],:class=>'category col-image', :content => link_to('Add image..',edit_category_path(category)))

  content_tag('dl',content,:class => opts[:class])
end

def category_links(category)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h category.name}", edit_category_path(category))}</li>
      <li>#{button_to("Delete #{h category.name}", category, :method => :delete, :title =>"Delete #{h category.name}")}</li>
    </ul>
    EOS
  end
end

def categories_list_helper(categories,reorder_url)
  side_menu_helper categories
  content_for :category_list_footer do 
    will_paginate categories if categories.respond_to? :total_pages
  end
  render  :partial => 'categories/results',:locals  => { :categories => categories, :reorder_url =>reorder_url }
end

def new_category_link_helper(opts={:update=>'all_categories'})
  link_to_remote('New Category', 
        { 
        :url      => new_category_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_category_path) 
end

def remove_category_helper(list,url,action,opts={})
  opts[:id]       ||= 'categories_list' 
  opts[:form_id]  ||= 'remove-product-category-form'
  opts[:form_class]  ||= 'button'
  
  content_for(:category_list_footer){ will_paginate(list) }
  form_tag(action,:method => :delete,
              :id=>opts[:form_id],
              :class=>opts[:form_class]){categories_list_helper(list,url)  }
end

end
