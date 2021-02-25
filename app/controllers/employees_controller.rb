class EmployeesController < ApplicationController
    
    def new
    end 

    def create 
    end 

    def index 
    end

    def show 
    end 

    def set_employee 
        @breed = Breed.find(params[:id])
    end

    def employee_params 
        params.require(:employee).permit(:first_name, :last_name, :title, :bio)
    end


end
