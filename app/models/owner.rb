class Owner < ApplicationRecord
    has_and_belongs_to_many :appointments
    has_many :breeds through: :appointments 
    validates :email confirmation: true 
    validates_presence_of :email_confirmation 
    validates :password confirmation: true 
    validates_presence_of :password_confirmation
end
