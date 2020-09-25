class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show, :update, :edit, :destroy]

    def index
        @appointments = Appointment.all
    end


    def new
        @appointment = Appointment.new
    end


    def create
        @appointment = Appointment.new(app_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
             render :new
        end
    end



    def show
        
    end


    def edit

    end


    def update
        @appointment.update(app_params)
        redirect_to appointment_path(@appointment)
    end


    def destroy
        @appointment.destroy
        redirect_to appointments_path
    end


    private

    def app_params
        params.require(:appointment).permit(:patient_id, :doctor_id, :condition, :date)
    end
    def set_appointment
        @appointment = Appointment.find(params[:id])
    end

end
