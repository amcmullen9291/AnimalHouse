class EmployeesController < ApplicationController

    def index 
        @session = session
        @employee = Employee.all
    end

    def new
        @employee = Employee.new
    end 

    def create          
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path
        else
            render :new
            flash[:notice] ="profile not saved. Please try again"
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
            if @employee.update(employee_params)
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
        @employee = Employee.find(params[:id])
    end

    def employee_params 
        params.require(:employee).permit(:first_name, :last_name, :title, :bio, :avatar, :breed_id => [])
    end

    def employee_check 
        set employee 
        if @employee.admin == true
        end
    end
end
