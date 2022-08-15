class Appointment < ApplicationRecord
    has_many :users 
    belongs_to :time_slot
    has_one :prescription
    validates :time_slot, presence: true

    def get_status
        status ? "Active" : "Inactive"
    end
    validates :status, presence: true
end
