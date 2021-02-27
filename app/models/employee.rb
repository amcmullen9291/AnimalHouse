class Employee < ApplicationRecord
    extend ActiveModel::Naming
    serialize :breed, Array
    has_and_belongs_to_many :appointments 
    validates :bio, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    has_one_attached :avatar
    
end
