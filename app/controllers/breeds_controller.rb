class BreedsController < ApplicationController
    before_action :set_breed, only: [ :show, :edit, :update, :destroy ]

    def index 
        @breeds = Breed.all
    end 

    def new
        @breed = Breed.new  
    end

    def create 
        @breed = Breed.new(breed_params)
        if @breed.save
            redirect_to breeds_path
        else
            render :new
            flash[:notice] ="profile not saved. Please try again"
        end 
    end

    def edit 
    end

    def update 
        if @breed.avatar.attach(params[:avatar])
            if @breed.update(breed_params)
                redirect_to breed_path(@breed)
            else
                render :edit
            end
        else 
            render :edit
        end
    end 
    
    def show 
        @breed = Breed.find(params[:id])
    end 

    def destroy 
        @breed.destroy
    end 
    
    def welcome 
    end 

    private 

    def set_breed 
        @breed = Breed.find(params[:id])
    end

    def breed_params 
        params.require(:breed).permit(:name, :hair_length, :height, :temperment, :weight, :group, :notes, :avatar, :employee_id, :dogs_name)
    end
end 
