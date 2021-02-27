class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

    
    def new 
    end 
    
    def create 
      @user = Owner.find_by(name: params[:user][:email])
      if @user.email && @user.authenticate(params[:user][:password])
          session[:user_id] = @owner[:id]
          redirect_to welcome_path(@user)
      else
          render :'users/new'
      end
    end

    def destroy
        if current_user
          session.delete(:uowner_id)
          flash[:success] = "Sucessfully logged out!"
        end
        redirect_to root_path
      end
  
    protected
    def user_params
      params.require(:owner).permit(:email, :password)
    end

    def auth_hash
      request.env['omniauth.auth']
    end
  end