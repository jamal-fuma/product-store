module ProductsHelper
  include PageHelpers
  def products_breadcrumb(product)
   ret = link_to('Products', products_path)
    ret << " &gt; #{link_to(h(product.name),product)}"
    return ret
  end

def pricing_helper(product)
  @product = product
  content = in_place_editor_field(@product, :cost_price)
  content << in_place_editor_field(@product, :sale_price)
  content
end
def weight_helper(product)
  @product = product
  content = in_place_editor_field(@product, :weight)
  content << in_place_editor_field(@product, :shipping_weight)
  content
end

#
# title row for lists of products
def product_heading_helper(opts={})
  opts[:id]    ||= 'toggle_products'
  opts[:class]    ||= 'col-name'
  opts[:row]    ||= 'row'
  opts[:wrapper]  ||= 'header' 
  content = ""
  content << column_title_helper(:id => opts[:id],:class =>'col-name',:checkbox => opts[:checkbox]) 
  content << column_helper(:class =>'product col-quantity', :content => 'Cost')
  content << column_helper(:class =>'product col-quantity', :content=>'Weight')
  content << column_helper(:class =>'product col-quantity', :content=>'Order Code')
  content << column_helper(:class =>'product col-quantity', :content=>'Categories')
  content << column_helper(:class =>'product col-quantity', :content=>'Suppliers')
  content << column_helper(:class =>'product col-quantity', :content=>'Images')
  content << column_helper(:class =>'product col-image', :content=>'Picture')
  content = content_tag('dl',content,:class => opts[:row])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of products
def product_row_helper(product,opts={})
  opts[:class] ||= 'row'
  photo_opts={:class=>'product col-image', :content => link_to('Add image..',product_images_path(product))}
  if opts[:image] 
    photo_opts[:image] = opts[:image]
  end
  
  # this make inline editing work 
  @product = product
  content = column_helper :class => 'col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'product_ids',
      :element_value    =>  product.id,
      :element_default  =>  true,
      :element_link     =>  link_to(h(product.name),product)
    })
    
    content << column_helper(:class =>'product col-quantity', :content =>pricing_helper(@product))
    content << column_helper(:class =>'product col-quantity', :content =>weight_helper(@product))
    content << column_helper(:class =>'product col-quantity', :content =>in_place_editor_field(@product, :order_code,{}, {}))
    content << column_helper(:class =>'product col-quantity', :content=>link_to(product.categories.size,product_categories_path(product)))
    content << column_helper(:class =>'product col-quantity', :content=>link_to(product.suppliers.size,product_suppliers_path(product)))
    content << column_helper(:class =>'product col-quantity', :content=>link_to(product.images.size,product_images_path(product)))
    content << photo_column_helper(product.images,photo_opts)
    content << column_helper(:class => 'product spacer', :content=>in_place_editor_field(@product, :description,{}, {:rows=>3} ))
    content_tag('dl',content,:class => opts[:class])
end

def edit_product_link_helper(product,opts={:update=>'all_products'})
  link_to_remote 'Edit Product', 
  { :url =>  edit_product_path(product) ,
    :method => :get,
    :update => 'all_products', 
    :position => :top
  }, 
  :href => edit_product_path(product)
end

def product_links(product)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h product.name}", edit_product_path(product))}</li>
      <li>#{button_to("Delete #{h product.name}", product, :method => :delete,:title =>"Delete #{h product.name}")}</li>
    </ul>
    EOS
  end
end

def products_list_helper(products)
  side_menu_helper products
  content_for :product_list_footer do 
    will_paginate products if products.respond_to? :total_pages
  end
  render  :partial => 'products/results',:locals  => { :products => products }
end

def new_product_link_helper(opts={:update=>'all_products'})
  link_to_remote('New Product', 
        { 
        :url      => new_product_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_product_path) 
end


end
