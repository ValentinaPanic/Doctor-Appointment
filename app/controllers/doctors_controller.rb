class DoctorsController < ApplicationController

    before_action :set_doctor, only: [:show, :update, :edit, :destroy]

    def index
        @doctors = Doctor.all
    end


    def show
        
    end


    def new
        @doctor = Doctor.new
    end


    def create
        @doctor = Doctor.create(doc_params)
        redirect_to doctor_path(@doctor)
    end


    def edit

    end


    def update
        @doctor.update(doc_params)
        redirect_to doctor_path(@doctor)
    end


    def destroy
        @doctor.destroy
        redirect_to doctors_path
    end


    private

    def doc_params
        params.require(:doctor).permit(:name, :practice, :rating)
    end

    def set_doctor
        @doctor = Doctor.find(params[:id])
    end
end
