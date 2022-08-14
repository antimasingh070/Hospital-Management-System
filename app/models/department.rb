class Department < ApplicationRecord
    belongs_to :hospital
    has_many :users
    validates :name, presence: true, 
         uniqueness: { case_sensitive: false }
end
