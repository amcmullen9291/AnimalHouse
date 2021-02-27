class AppointmentsController < ApplicationController

    def new
        return head(:forbidden) unless session.include? :user_id
        @appointment = Appointment.new
        @employee= Employee.find(params[:employee_id])

    end

    def create 
        @employee = Employee.find(params([:employee_id]))
        @appointment = Appointment.new(appointment_params)
        if @appointment.save(appointment_params)
            redirect_to root_path  #will need a thank you page. also do the email thing 
        else 
            render :new
        end
    end 

    def index 
        @appointment = Appointment.all
    end 

    private 
    def appointment_params
        params.require(:appointment).permit(:employee_id, breed_id, :notes)
    end
end
