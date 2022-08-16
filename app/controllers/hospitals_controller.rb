class HospitalsController < ApplicationController
    # def show
    #     Hospital.select('hospitals.*, departments.*').joins(:departments).where(id: 1)
    # end
   

    def index
        @hospitals = Hospital.all
    end
    


    # def doctors
    #     @hospital = Hospital.find(session[:hospital])
    #     @hospital = @hospital.users.where(role: 'doctor')
    # end
end
