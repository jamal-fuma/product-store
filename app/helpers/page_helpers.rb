module PageHelpers
  def page_keywords_helper(keywords)
    content_for :page_keywords do
      keywords
    end
  end

  def page_title_helper(title)
    content_for :page_title do
      title
    end
   end

  def page_crumb_helper(crumb,opts={}) 
    # Which tag to wrap the generated content with
    opts[:tag]      ||= :p

    # Which method to call on crumb's for link text
    opts[:method]   ||= :name

    # Yield block used when appending the generated content
    opts[:target]   ||= :title_crumb 

    # Paste the 'crumb' into the 'target' block wrapping
    #  in a generated html tag of 'tag'
    content_for opts[:target] do
      # title prefixing bread crumbs
        "<ul><li>#{opts[:title] || ""} #{pages_breadcrumb(crumb,opts)}</li> </ul>"
    end
  end

  def page_description_helper(description)
    content_for :page_description do
      description
    end
  end
  def page_scripts_helper(scripts)
    content_for :page_scripts do
      scripts
    end
  end

  def page_navigation_helper(content="")
   content_for :repeatnav_frame do 
    content
   end 
   content_for :sidebar_frame do 
    content
   end 
  end

 def sortable_list(elements,opts={},&block)
    opts[:list_type]     ||= 'element'
    opts[:class]         ||= 'shared_list'
    opts[:wrapper]       ||= 'content'
    opts[:group]         ||= 'all'
    opts[:element_name]  ||= "#{opts[:group]}_#{opts[:list_type]}"
    opts[:url]           ||= reorder_categories_url
    opts[:element_field] ||= "#{opts[:list_type]}_ids"
    opts[:func]          ||= Hash[:complete, "update_list('#{opts[:element_name]}');"]

   # add a handler to the list to update table stripes and grab checkboxes
    content_for :inline_script do 
      sortable_element(opts[:element_name], 
        :url => opts[:url],
        :complete => opts[:func][:complete]
      )
    end
  content = elements.map{|item| 
    content_tag('li', block.call(item), 
        :class=>cycle('shared-list-odd-row','shared-list-even-row'),
        :id =>dom_id(item)
    )}.join
  content = content_tag('ul',content,:class => opts[:class],:id =>opts[:element_name])
  content_tag('div',content,:class =>opts[:wrapper])
  end

def column_helper(opts={},&block)
  opts[:class] ||= 'col'
  unless block_given? || opts[:content]
    raise "column_helper: needs a lock or :content" 
  end

  if block_given?
    opts[:content] = concat(capture(&block))
  end
  content_tag('dd',opts[:content],:class => opts[:class])
end

def photo_column_helper(images,opts={})
  opts[:class] ||= 'col'
  opts[:index] ||= 0
  opts[:content] ||= 'no image'
   
  if images.empty?
    return column_helper(:class => opts[:class], 
                          :content=>opts[:content])
  end
  pic = images[opts[:index]]
  filename=""
  if opts[:image]
    filename = pic.public_filename(opts[:image]) 
    link = image_path(pic)
  else
    filename = pic.public_filename
    link = :back
  end
  column_helper(:class => opts[:class],
                :content => link_to(image_tag(filename, :alt=>h(pic.description)),link))
end

def checkbox_helper(box=nil,opts={})
  opts[:class] ||= 'select'
  content = ""
  if box
#content << check_box_tag("#{opts[:element_id]}[]", opts[:element_value], opts[:element_default], :class => opts[:class])
    content << check_box_tag("#{opts[:element_id]}[]", opts[:element_value],true,{ :class => opts[:class]})
  end
  content << opts[:element_link]
  content
end

def column_title_helper(opts={})
  opts[:id]     ||= 'toggle_categories'
  opts[:title]  ||= 'Name'
  opts[:class]  ||= 'col-name'
  content = ""
  content << check_box_tag(opts[:id], 0) if opts[:checkbox]
  content << opts[:title]
  column_helper :class => opts[:class], :content => content
end

def side_menu_helper(categories=nil,opts={})
  opts[:method] ||= :name
  content = opts[:title] || ""
  content = <<EOS
  <p class="menu_title">#{content}</p>
EOS
  categories ||= Category.parents
  unless( categories.empty? )
    content_for :sidebar_frame do
      <<-EOS
      <div class="menubar">
      <ul class="menu">
      #{categories.each.map { |c| "<li>#{link_to(h(c.send(opts[:method])),(opts[:func] ? send(opts[:func],c) : c))}</li>" }.join("\n")}
      </ul>
      </div>
      EOS
    end
  end # unless categories.empty?
end

end
