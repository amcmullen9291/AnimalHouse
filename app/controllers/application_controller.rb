class ApplicationController < ActionController::Base
    before_action :require_login

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user
    
    def logged_in?
        !current_user.nil?
    end

    def require_login
        return head(:forbidden) unless session.include? :owner_id
    end
end
