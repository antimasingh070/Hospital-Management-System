class User < ApplicationRecord
  belongs_to :hospital
  belongs_to :department
  has_many :prescriptions
  has_many :appointments
  validates :role, presence: true, 
         uniqueness: { case_sensitive: false }
  validates :gender, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
#   def book_already_tracked?(ticker_symbol)
#     book = book.check_db(ticker_symbol)
#        return false unless book
#        books.where(id: book.id).exists?    
#        end

#        def under_book_limit?
#        books.count < 10
#        end

#        def can_track_book?(ticker_symbol)
#        under_book_limit? && !book_already_tracked?(ticker_symbol)
#        end


       def self.search(param)
       param.strip!
       to_send_back = (username_matches(param) + email_matches(param)).uniq
       return nil unless to_send_back
       to_send_back
       end

       def self.username_matches(param)
       matches('username', param)
       end

       def self.email_matches(param)
       matches('email', param)
       end

       def self.matches(field_name, param)
       where("#{field_name} like ?", "%#{param}%")
       end

       def except_current_user(users)
       users.reject { |user| user.id == self.id }
       end

       def not_users_with?(id_of_user)
       !self.users.where(id: id_of_user).exists?
       end
end
