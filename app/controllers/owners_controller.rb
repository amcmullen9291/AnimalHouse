class OwnersController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]

    def new 
        @owner = Owner.new
    end 

    def create 
        @owner = Owner.new(owner_params)
        if @owner.save 
            redirect_to employees_path
        else
            render :new
        end 
    end 

    def index 
    end 

    def show 
    end 

    def edit 
    end

    def update 
    end 

    def destroy
    end 

    private 

    def owner_params 
        params.require(:owner).permit(:name, :email, :email_confirmation, :password, :password_digest, :password_confirmation, :notes, :telephone, :other_dogs, :comments)
    end 

    def set_owner 
        @owner = Owner.find_by(params[:id])
    end
end
