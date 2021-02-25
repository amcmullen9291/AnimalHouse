class UsersController < ApplicationController
    before_action :set_user, only: [ :show, :edit, :update, :delete ]
    def new 
        @user = User.new 
    end 

    def create 
        if @user.create(user_params)

        else
            render :new
        end 
    end 

    def show 
    end 

    def edit 
    end

    def update 
    end

    def index
    end

    def delete 
    end 

    private 
    def set_user 
        @user = User.find_by(params[:id])
    end 

    def user_params 
        params.require(:user).permit(:name, :email, :telephone, :password, :password_digest, :password_confirmation)
    end
end
