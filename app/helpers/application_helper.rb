# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
    
     # generate an edit link
    def edit_link(name,*args,&block)
      link_to "Edit details for (#{h(name)})",*args,&block
    end
  
   # generate an delete button
    def delete_link(name,*args)
      button_to "Delete details for (#{h(name)})", :method => :delete
    end

    def category_products_link(category)
      link_to "#{category.products.size} products", category_products_path(category)
    end

    # generate a consistent heading
    def detail_heading(name)
       "Showing details for (#{h(name)})"
    end

    def detail_heading_tag(*args)
       content_tag(:h1,detail_heading(args.shift),*args)
    end

    def new_helper(template)
        @helper = ViewHelper::Helper.new(template)        
    end

    def framed_content_tag(opts = {}, &block )
        @helper.framed_content(opts,&block)
    end 
    def menu_list_tag(opts={},&block)
        @helper.menu_list_tag(opts,&block)
    end

    def copyright_tag(opts={},&block)
        @helper.copyright_tag(opts,&block)
    end

  def document_title
    [controller.controller_name, controller.action_name].join(' | ')
  end
  
  def propercase(s)
    s.split(/\s/).each { |el| el.capitalize! }.join(" ")
  end

  def logged_in?
    current_user && current_user.logged_in?
  end
  
  # handy turns :product into Product
  def sym_to_klass
    object.to_s.camelize.constantize
  end
  def table_name
    self.class.to_s.classify.pluralize.downcase
  end

##
  # Renders an in-place select similar to in_place_editor.  Options are the same as those supported by
  # InPlaceMacrosHelper.in_place_editor(), plus some extra ones to deal with the list:
  #
  # <tt>:collection</tt>::              The collection that will be used to build the list options
  # <tt>:load_collection_url</tt>::     A URL that will return the collection in JSON format
  # <tt>:loading_collection_text</tt>:: Text to display while the collection is loading
  # <tt>:loading_class_name</tt>::      Class applied to form while the collection is loading
  ##
  def in_place_select(field_id, options = {})
    function =  "new Ajax.InPlaceCollectionEditor("
    function << "'#{field_id}', "
    function << "'#{url_for(options[:url])}'"

    js_options = {}
    js_options['cancelText'] = %('#{options[:cancel_text]}') if options[:cancel_text]
    js_options['okText'] = %('#{options[:save_text]}') if options[:save_text]
    js_options['loadingText'] = %('#{options[:loading_text]}') if options[:loading_text]
    js_options['savingText'] = %('#{options[:saving_text]}') if options[:saving_text]
    js_options['rows'] = options[:rows] if options[:rows]
    js_options['cols'] = options[:cols] if options[:cols]
    js_options['size'] = options[:size] if options[:size]
    js_options['externalControl'] = "'#{options[:external_control]}'" if options[:external_control]
    js_options['loadTextURL'] = "'#{url_for(options[:load_text_url])}'" if options[:load_text_url]
    js_options['ajaxOptions'] = options[:options] if options[:options]
    js_options['evalScripts'] = options[:script] if options[:script]
    js_options['onComplete'] = options[:on_complete] if options[:on_complete]
    js_options['callback']   = "function(form) { return #{options[:with]} }" if options[:with]
    js_options['clickToEditText'] = %('#{options[:click_to_edit_text]}') if options[:click_to_edit_text]

    js_options['collection'] = %(#{js_collection_for(options[:collection])}) if options[:collection]
    js_options['loadCollectionURL'] = %('#{url_for(options[:load_collection_url])}') if options[:load_collection_url]
    js_options['loadingCollectionText'] = %('#{options[:loading_collection_text]}') if options[:loading_collection_text]
    js_options['loadingClassName'] = %('#{options[:loading_class_name]}') if options[:loading_class_name]

    function << (', ' + options_for_javascript(js_options)) unless js_options.empty?
    function << ')'
    javascript_tag(function)
  end
  
  def in_place_collection_editor_field(object,method,container, tag_options={})
    tag = ::ActionView::Helpers::InstanceTag.new(object, method, self)
    tag_options = { :tag => "span",
      :id => "#{object}_#{method}_#{tag.object.id}_in_place_editor",
      :class => "in_place_editor_field" }.merge!(tag_options)
    url = url_for( :action => "set_#{object}_#{method}", :id => tag.object.id )
    collection = container.inject([]) do |options, element|
      options << "[ '#{escape_javascript(element.last.to_s)}', '#{escape_javascript(element.first.to_s)}']" 
    end
    function =  "new Ajax.InPlaceCollectionEditor("
    function << "'#{object}_#{method}_#{tag.object.id}_in_place_editor',"
    function << "'#{url}',"
    function << "{collection: [#{collection.join(',')}], id: '#{object}_#{method}'});"
    tag.to_content_tag(tag_options.delete(:tag), tag_options) + javascript_tag(function)
  end

  private

    ##
    # Converts the given collection to a javascript string suitable for rendering options in a select list.
    # The collection key becomes the option value, while the collection value becomes the body of the <option> tags.
    ##
    def js_collection_for(collection)
      js = '['
      collection.each { |key, value| js << "[#{to_javascript(value)},#{to_javascript(key)}]," }
      js = js.chop
      js << ']'
    end

    ##
    # Surrounds the given value with single quotes if it's not a number so JavaScript will render/process the select
    # option values correctly.
    ##
    def to_javascript(value)
      return value if value.is_a?(Numeric)
      "'#{value}'"
    end

end

