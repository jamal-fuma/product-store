module MiscsHelper
 def add_comment_link(name,bug)
      link_to_function name do |page|
          page.insert_html :bottom, :comment, :partial => 'comments/comment' , :object => Comment.new(:bug => bug,:user => current_user)
      end
  end
  
def generate_html(form_builder, method, options = {})
  options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
  options[:partial] ||= method.to_s.singularize
  options[:form_builder_local] ||= :f

  form_builder.fields_for(method, options[:object], :child_index => 'NEW_RECORD') do |f|
      render(:partial => options[:partial], :locals => { options[:form_builder_local] => f })
  end
end

def link_to_new_nested_form(name, form_builder, method, options = {})
  options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
  options[:partial] ||= method.to_s.singularize
  options[:form_builder_local] ||= :f
  options[:element_id] ||= method.to_s
  options[:position] ||= :bottom
  link_to_function name do |page|
  html = generate_html(form_builder,
      method,
      :object => options[:object],
      :partial => options[:partial],
      :form_builder_local => options[:form_builder_local]
      )
  page << %{
    $('#{options[:element_id]}').insert({ #{options[:position]}: "#{ escape_javascript html }".replace(/NEW_RECORD/g, new Date().getTime()) });
  }
end
end

end
