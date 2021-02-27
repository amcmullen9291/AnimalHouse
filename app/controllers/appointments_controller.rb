class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new

    end

    def create 
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to employee_path (params[:appointment][:employee_id])
        else 
            render :new
        end
    end 

    def index 
        @appointment = Appointment.all
    end 

    private 

    def appointment_params
        params.require(:appointment).permit(:employee_id, :owner_id, :breed_id, :notes)
    end

end
