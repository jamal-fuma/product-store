module FumaFormHelper
  def wrapping(type, field_name, label, field, options = {})
    
    # hack nested forms into working, looks shit now but css will fix that up 
    nested_model_regexp = %r{(\w+)\[(\w+)\]\[(\d+)\]_(\w+)}
    model_attr_regexp = %r{^(\w+)_(\w+)$}
    nested_model_block = lambda {|parent,child,index,method|
            child = child.sub(/_attributes$/,"")
            @template.instance_variable_get("@#{parent}").instance_variable_get("@#{child}")[index.to_i]
    }
    model_attr_block = lambda {|parent,method|
            @template.instance_variable_get("@#{parent}")
    }

    object = case field_name
    when @template.instance_variables.include?("@#{@object_name}") :  @template.instance_variable_get("@#{@object_name}")
    when nested_model_regexp : field_name.scan(nested_model_regexp).collect(&nested_model_block)
    when model_attr_regexp :   field_name.scan(model_attr_regexp).collect(&model_attr_block)
    else
            # handy place to grab the field for mapping to a more deeply nested model 
            # raise "Cant parse field_name for wrapping, \'#{field_name}\' \'#{object_name}\'"
            nil
    end
    txt=nil
    if object && object.kind_of?(Array)
       object = object.shift
    end

    # stick errors into the label text
    label = label.capitalize if label
    unless object.nil? || options[:hide_errors] || !object.respond_to?(:errors)
      #Check if there are any errors for this field in the model
      errors = object.errors.on(options[:method])
      #Generate the label using the text as well as the error message wrapped in a span with error class
      txt = "<span class=\"field-label-with-error\" > #{errors.is_a?(Array) ? errors.first : errors}</span>" if errors
    end

    help = %Q{<span class="help">#{options[:help]}</span>} if options[:help]
    to_return = []
    to_return << %Q{<p class="#{(["submit"].include?(type)) ? "buttons" : "clearfix"}">}  
    unless ["radio","check", "submit"].include?(type)
      to_return << %Q{<label for="#{field_name}">#{label}#{help}</label>#{txt}}
    end
    to_return << field
    to_return << %Q{<label for="#{field_name}">#{label}#{help}</label>} if ["radio","check"].include?(type)    

    to_return << %Q{</p>}
  end
    
  def fuma_group(type, field_name, label, fields, options = {})
    help = %Q{<span class="help">#{options[:help]}</span>} if options[:help]
    to_return = []
    to_return << %Q{<p class="clearfix">}
    to_return << %Q{<label for="#{field_name}">#{label}#{help}</label>}
    to_return << fields.join
    to_return << %Q{</p>}
  end

  def boolean_field_wrapper(input, name, value, text, help = nil)
    field = []
    field << %Q{<label>#{input} #{text}</label>}
    field << %Q{<div class="help">#{help}</div>} if help
    field
  end

  def check_box_tag_group(name, values, options = {})
    selections = []
    values.each do |item|
      if item.is_a?(Hash)
        value = item[:value]
        text = item[:label]
        help = item.delete(:help)
      else
        value = item
        text = item
      end
      box = check_box_tag(name, value)
      selections << boolean_field_wrapper(box, name, value, text)
    end
    label = options[:label]
    fuma_group("check-box", name, label, selections, options)    
  end      

end
