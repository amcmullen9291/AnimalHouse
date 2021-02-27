class Owner < ApplicationRecord
    has_and_belongs_to_many :appointments
    has_many :breeds, through: :appointments 
    validates :email, confirmation: true 
    validates_presence_of :email_confirmation 
    validates :password, confirmation: true 
    validates_presence_of :password_confirmation
    validates :first_name, format: { without: /[0-9]/, message: "no numbers, please" }
    validates :last_name, format: { without: /[0-9]/, message: "no numbers, please" }

end
