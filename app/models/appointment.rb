class Appointment < ApplicationRecord
    has_many :users 
    belongs_to :time_slot
    validates :time_slots, presence: true, 
         uniqueness: { case_sensitive: false }

    def get_status
        status ? "Active" : "Inactive"
    end
    validates :status, presence: true
end
