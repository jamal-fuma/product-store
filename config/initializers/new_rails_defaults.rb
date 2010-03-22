# Be sure to restart your server when you modify this file.

# These settings change the behavior of Rails 2 apps and will be defaults
# for Rails 3. You can remove this initializer when Rails 3 is released.

if defined?(ActiveRecord)
  # Include Active Record class name as root for JSON serialized output.
  ActiveRecord::Base.include_root_in_json = true

  # Store the full class name (including module namespace) in STI type column.
  ActiveRecord::Base.store_full_sti_class = true
end

ActionController::Routing.generate_best_match = false

# Use ISO 8601 format for JSON serialized times and dates.
ActiveSupport.use_standard_json_time_format = true

# Don't escape HTML entities in JSON, leave that for the #json_escape helper.
# if you're including raw json in an HTML page.
ActiveSupport.escape_html_entities_in_json = false

ActionView::Base.default_form_builder = FumaFormBuilder
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
error_style = "background-color: #ffff80"
if html_tag =~ /<(input|textarea|select)[^>]+style=/
  style_attribute = html_tag =~ /style=['"]/
  html_tag.insert(style_attribute + 7, "#{error_style}; ")
elsif html_tag =~ /<(input|textarea|select)/
  first_whitespace = html_tag =~ /\s/
  html_tag[first_whitespace] = " style=\"#{error_style}\" "
  end
html_tag
end

#ActionView::Base.default_form_builder = SemanticFormBuilder
#ActionView::Base.field_error_proc = Proc.new { |html_tag, instance| "<span class=\"fieldWithErrors\">#{html_tag}</span>" }


