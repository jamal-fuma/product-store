class AuthenticatedController < ActionController::Base
  include AuthenticatedSystem
  before_filter :login_required 
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password, :password_confirmation
end
