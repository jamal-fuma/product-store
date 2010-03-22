module MenuHelper

  def to_menu(parents,opts={:method => :name},&block)
    to_link = lambda {|item| 
        menu_item_tag(item.send(opts[:method]), block.call(item))
    }
    parents.map{|parent| to_link[parent] }
  end 

#  def xx_to_menu(parents,child)
#    submenu = ""
#    menu = ""
#    if child
#        submenu << menu_item_tag(child.name, category_url(child))
#        submenu << block_tag(:ul,opts={:class => 'submenu'}) {
#         [ menu_item_tag("#{child",categories_url),
#          @category.children.map{|child| menu_item_tag(child.name, "#{category_url( :id => child)}") } ]
#    }
#    categories.map{|parent| 
#        parent.id == @category.id ? 
#          submenu : 
#          menu_item_tag(parent.name, "#{category_url( :id => parent)}") 
#    }
#    else
#      menu = categories.map{|parent| menu_item_tag(parent.name, "#{category_url( :id => parent)}") }
#    end
#    menu
#  end

  def to_submenu(child,opts={},&block)
    css_class = opts.delete(:class) || 'submenu'
    content_tag(:li) do
      content_tag(:ul,:class => css_class) do
        to_menu(child.children,opts,&block)
      end
    end
  end
  
  def category_menu_tag
    to_link = lambda { |link| category_url(link) }
    parents = Category.all(:order => :position,:conditions => {:parent_id => nil})
    @parent = @template.instance_variable_get("@category")
    menu = (@parent) ? 
      to_submenu(@parent,:method => :name,&to_link) : ""
    [ menu,to_menu(parents,:method => :name,&to_link) ]

  end
end
