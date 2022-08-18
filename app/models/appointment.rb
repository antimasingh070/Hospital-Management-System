class Appointment < ApplicationRecord
   
    belongs_to :time_slot
    has_many :prescriptions
    validates :time_slot, presence: true
    validates :status, presence: true
end
