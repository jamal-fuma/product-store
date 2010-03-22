module SuppliersHelper
# title row for lists of suppliers
def phone_number(supplier)
  content = in_place_editor_field(@supplier, :dial_code)
  content << in_place_editor_field(@supplier, :telephone_number)
  content
end
def account_number(supplier)
  content = in_place_editor_field(@supplier, :account_sort_code)
  content << in_place_editor_field(@supplier, :account_number)
  content
end

def supplier_heading_helper(opts={})
  opts[:id]    ||= 'toggle_suppliers'
  opts[:class]    ||= 'col-name'
  opts[:row]    ||= 'row'
  opts[:wrapper]  ||= 'header' 
  content = ""
  content << column_title_helper(:id => opts[:id],:class =>'col-name',:checkbox => opts[:checkbox]) 
  content << column_helper(:class =>'supplier col-description', :content => 'Description')
  content << column_helper(:class =>'supplier col-name', :content=>'Acc/No')
  content << column_helper(:class =>'supplier col-name', :content=>'Bank Name')
  content << column_helper(:class =>'supplier col-quantity', :content=>'Telephone')
  content << column_helper(:class =>'supplier col-name', :content=>'Email')
  content << column_helper(:class =>'supplier col-quantity', :content=>'Products')
  content = content_tag('dl',content,:class => opts[:row])
  content_tag('div',content,:class =>opts[:wrapper])
end

# content row for lists of suppliers
def supplier_row_helper(supplier,opts={})
  # the plugin barfs unless you do this
  @supplier = supplier

  opts[:class] ||= 'row'
  content = column_helper :class => 'col-name', :content => checkbox_helper(opts[:checkbox], {
      :element_id       =>  'supplier_ids',
      :element_value    =>  supplier.id,
      :element_default  =>  false,
      :element_link     =>  link_to(h(supplier.name),supplier)
    })
    content << column_helper(:class =>'supplier col-description', :content =>in_place_editor_field(@supplier, :description,{},{:rows =>3}))
    content << column_helper(:class =>'supplier col-name', :content =>account_number(@supplier))
    content << column_helper(:class =>'supplier col-name', :content =>in_place_editor_field(@supplier, :bank_name,{},{}))
    content << column_helper(:class =>'supplier col-quantity', :content => phone_number(supplier) )
    content << column_helper(:class =>'supplier col-name', :content => in_place_editor_field(@supplier,:email,{},{}))
    content << column_helper(:class =>'supplier col-quantity', :content=>link_to(supplier.products.size,supplier_products_path(supplier)))
    content_tag('dl',content,:class => opts[:class])
end

def supplier_links(supplier)
  content_for :sidebar_frame do
    <<-EOS
    <ul class="menu">
      <li>#{link_to("Edit #{h supplier.name}", edit_supplier_path(supplier))}</li>
      <li>#{button_to("Delete #{h supplier.name}", supplier, :method => :delete, :title =>"Delete #{h supplier.name}")}</li>
    </ul>
    EOS
  end
end

def suppliers_list_helper(suppliers)
  side_menu_helper suppliers
  content_for :supplier_list_footer do 
    will_paginate suppliers if suppliers.respond_to? :total_pages
  end
  render  :partial => 'suppliers/results',:locals  => { :suppliers => suppliers }
end

def new_supplier_link_helper(opts={:update=>'all_suppliers'})
  link_to_remote('New Supplier', 
        { 
        :url      => new_supplier_path, 
        :method   => :get,
        :update   => opts[:update], 
        :position => :top 
        }, 
        :href => new_supplier_path) 
end


end
