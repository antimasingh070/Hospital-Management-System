class User < ApplicationRecord
  belongs_to :hospital
  belongs_to :role
  belongs_to :appointment
  belongs_to :department
  has_many :prescriptions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
