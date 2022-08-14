class HospitalsController < ApplicationController
    def show
        @hospital = Hospital.find(params[:id])
    end
    def index
        @hospitals = Hospital.all
    end

    # def doctors
    #     @hospital = Hospital.find(session[:hospital])
    #     @hospital = @hospital.users.where(role: 'doctor')
    # end
end
