class Employee < ApplicationRecord
    serialize :breed, Array
    has_and_belongs_to_many :appointments 
    has_many :breeds, through: :appointments
    validates :bio, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    has_one_attached :avatar
    accepts_nested_attributes_for :breed_id
    
end
