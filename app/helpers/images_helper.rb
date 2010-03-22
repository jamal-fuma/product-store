module ImagesHelper

# title row for lists of images
def image_heading_helper(opts={})
  opts[:id]    ||= 'toggle_images'
  opts[:class]    ||= 'col-name'
  opts[:row]    ||= 'row'
  opts[:wrapper]  ||= 'header' 
  content = ""
  content << column_title_helper(:id => opts[:id],:class =>'image col-name',:checkbox => opts[:checkbox]) 
  content << column_helper(:class =>'image col-name', :content => 'Name')
  content << column_helper(:class =>'image col-description', :content => 'Description')
  content << column_helper(:class =>'image col-quantity', :content=>'Categories')
  content << column_helper(:class =>'image col-quantity', :content=>'Products')
  content << column_helper(:class =>'image col-image', :content=>'Image')
  content = content_tag('dl',content,:class => opts[:row])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of images
def image_row_helper(image,opts={})
  opts[:class] ||= 'row'
  @image = image
  content = column_helper :class => 'image col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'image_ids',
      :element_value    =>  image.id,
      :element_default  =>  false,
      :element_link     =>  link_to(h(image.display_name),image)
    })
  content << column_helper(:class => 'image col-name', :content=>in_place_editor_field(@image, :name,{}, {} ))
  content << column_helper(:class => 'image col-description', :content=>in_place_editor_field(@image, :description,{}, {:rows =>5} ))
  content << column_helper(:class =>'image col-quantity', :content=>link_to(image.categories.size,image_categories_path(image)))
  content << column_helper(:class =>'image col-quantity', :content=>link_to(image.products.size,image_products_path(image)))
  content << photo_column_helper([image], :image => opts[:image],:class=>'image col-image', :content => link_to('Add image..',edit_image_path(image)))
  content_tag('dl',content,:class => opts[:class])
end

def image_links(image)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h image.display_name}", edit_image_path(image))}</li>
      <li>#{button_to("Delete #{h image.display_name}", image, :method => :delete, :title =>"Delete #{h image.display_name}")}</li>
    </ul>
    EOS
  end
end

def images_list_helper(images,thumb=nil, opts={})
  side_menu_helper images, :method => :display_name
  content_for :image_list_footer do 
    will_paginate images if images.respond_to? :total_pages
  end
  render  :partial => 'images/results',:locals  => { :images => images, :thumb =>thumb, :reorder_url => opts[:reorder_url] }
end
def edit_image_link_helper(image,opts={:update=>'all_images'})
  link_to_remote 'Edit Image', 
  { :url =>  edit_image_path(image) ,
    :method => :get,
    :update => 'all_images', 
    :position => :top
  }, 
  :href => edit_image_path(image)
end


def new_image_link_helper(opts={:update=>'all_images'})
  link_to_remote('New Image', 
        { 
        :url      => new_image_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_image_path) 
end

def remove_image_helper(list,url,action,opts={})
  opts[:id]       ||= 'images_list' 
  opts[:form_id]  ||= 'remove-product-image-form'
  opts[:form_class]  ||= 'button'
  
  content_for(:image_list_footer){ will_paginate(list) }
  form_tag(action,:method => :delete,
              :id=>opts[:form_id],
              :class=>opts[:form_class]){images_list_helper(list,:thumb, :reorder_url => url)  }
end

end
