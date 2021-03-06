class PatientsController < ApplicationController
    before_action :set_patient, only: [:show, :update, :edit, :destroy]

    def index
        @patients = Patient.all
    end


    def show
        
    end


    def new
        @patient = Patient.new
    end


    def create
        @patient = Patient.create(patient_params)
        redirect_to patient_path(@patient)
    end


    def edit

    end


    def update
        @patient.update(patient_params)
        redirect_to patient_path(@patient)
    end


    def destroy
        @patient.destroy
        redirect_to patients_path
    end


    private

    def patient_params
        params.require(:patient).permit(:name)
    end

    def set_patient
        @patient = Patient.find(params[:id])
    end
end
