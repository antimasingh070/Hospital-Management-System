class Prescription < ApplicationRecord
    has_many :users 
   
    belongs_to :appointment
end
