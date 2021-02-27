class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
        @employee= Employee.find(params[:employee_id])
    end

    def create 
        @employee = Employee.find(params([:employee_id]))
        if @appointment.save(appointment_params)
            redirect_to root_path  #will need a thank you page. also do the email thing 
        else 
            render :new
        end
    end 

    def index 
    end 

    private 
    def appointment_params
        params.require(:appointment).permit(:employee_id, breed_id, :notes)
    end
end
