class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :location, :email, :password, :remember_me, :picture])
        devise_parameter_sanitizer.permit(:sign_in, keys:[:email, :password, :remember_me])
        devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :username, :location, :phone, :bio, :email, :password, :remember_me, :picture])
    end

    
    def after_new_user_session_path
        redirect to listings_path
    end

    def after_user_session_path
        redirect to listings_path
    end

end