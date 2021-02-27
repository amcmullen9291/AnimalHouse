class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

    
    def new 
    end 
    
    def create
      @owner = Owner.find_by(email: params[:email])
      return head(:forbidden) unless params[:password] == @owner.password
      session[:owner_id] = @owner.id
    end

    def destroy
        if current_user
          session.delete(:uowner_id)
          flash[:success] = "Sucessfully logged out!"
        end
        redirect_to root_path
      end
  
    protected
  
    def auth_hash
      request.env['omniauth.auth']
    end
  end