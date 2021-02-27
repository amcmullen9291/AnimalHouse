class OwnersController < ApplicationController

    def new 
        @owner = Owner.new
    end 

    def create 
        @owner = Owner.new(owner_params)
        if @owner.save 
            @session[:owner_id] = @owner.id
            redirect_to employees_path
        else
            render :new
        end 
    end 

    def index 
    end 

    def show 
        @owner = Owner.find(params[:id])
    end 

    def edit 
    end

    def update 
        if @owner.update(owner_params)
        else
            render :edit
        end
    end 

    def destroy
    end 

    private 

    def owner_params 
        params.require(:owner).permit(:name, :email, :email_confirmation, :password, :password_digest, :password_confirmation, :comments, :telephone, :other_dogs, :comments)
    end 

    def set_owner 
        @owner = Owner.find_by(params[:id])
    end
end
