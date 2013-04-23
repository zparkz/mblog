class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
  	if request.env['omniauth.origin']
       request.env['omniauth.origin']
    end
    # Merge data from Facebook with her current account
  #if session["facebook_data"] && current_user.facebook_uid.nil?
  #  current_user.facebook_uid = session["facebook_data"]["uid"]
  #  current_user.save(:validate => false)
  #end
  # Countermeasure against session fixation
  #session.keys.grep(/^facebook\./).each { |k| session.delete(k) }

  super
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
end
