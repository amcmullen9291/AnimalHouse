class BreedsController < ApplicationController
    before_action :set_breed, only: [ :show, :edit, :update, :destroy ]

    def index 
        @breeds = Breed.all
    end 

    def new
        @breed = Breed.new  
    end

    def create 
        if @breed.create(breed_params)
            redirect breeds_path
        else
            render :new
        end 
    end

    def edit 
    end

    def update 
        if @breed.update(breed_params)
            redirect breeds_path
        else
            render :edit
        end
    end 

    def show 

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
        params.require(:breed).permit(:name, :hair_length, :height, :temperment, :weight, :group, :notes)
    end
end 
