class Owner < ApplicationRecord
    has_secure_password
    has_and_belongs_to_many :appointments
    has_many :breeds, through: :appointments 
    validates :name, presence: true, length: { minimum: 3 }
    validates :email, confirmation: true
    validates_presence_of :email_confirmation 
    validates :password, confirmation: true
    validates_presence_of :password_confirmation
    validates :name, format: { without: /[0-9]/, message: "no numbers, please" }


    def a_method_used_for_validation_purposes
        errors[:base] << "Bark, Bark, Bark."
        end

end
