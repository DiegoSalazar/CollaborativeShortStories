class ApplicationController < ActionController::Base
	layout :layout_by_resource
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resources)
  	phrases_path
  end

  def layout_by_resource
  	devise_controller? ? "sign_in" : "application"
  end
end
