class Employee < ApplicationRecord
    serialize :breed, Array
    has_and_belongs_to_many :appointments 
    has_many :breeds, through: :appointments
    validates :bio, length: { maximum: 500 }
    has_one_attached :avatar
    
end
