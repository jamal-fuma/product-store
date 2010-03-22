# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  include ParameterScanning
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password, :password_confirmation
  before_filter :login_required 

# string of commas separated ids to operate on
  def selected_ids(param_name)
    @selected_ids = params[param_name] || params[:selected_ids]
    transform(@selected_ids)
  end 

end
