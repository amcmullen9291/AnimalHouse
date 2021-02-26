class Employee < ApplicationRecord
    has_and_belongs_to_many :appointments 
    validates :bio, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    has_one_attached :avatar

end
