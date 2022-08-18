class Hospital < ApplicationRecord
    # has_many :patients, -> { where(role: 'Patient') }, class_name: "users"
    # has_many :doctors, -> { where(role: 'Doctor') }, class_name: "users"
    # has_many :administartors, -> { where(role: 'Administartor') }, class_name: "users"
    has_many :users
    has_many :departments 
end
