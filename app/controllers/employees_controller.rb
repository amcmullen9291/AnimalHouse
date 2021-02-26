class EmployeesController < ApplicationController
    
    def index 
        @employee = Employee.all
    end

    def new
        @employee = Employee.new
    end 

    def create  
    @employee = Employee.new(employee_params)
         if @employee.save 
            flash[:notice] = "Again, Welcome to Small Paws"
            redirect_to employees_path
         else
            render :new
        end 
    end 

    def new_appointment 
        @appointment = Appointment.new
        render 'appointments/new'
    end 

    def show 
        @employee = Employee.find(params[:id])
    end 

    def edit 
    end 

    def update 
        if @employee.avatar.attach(params[:avatar])
            if @employee.update(breed_params)
                redirect_to breed_path(@employee)
            else
                render :edit
            end
        else 
            render :edit
        end
    end 


private
    def set_employee 
        @breed = Breed.find(params[:id])
    end

    def employee_params 
        params.require(:employee).permit(:first_name, :last_name, :title, :bio, :avatar)
    end


end
