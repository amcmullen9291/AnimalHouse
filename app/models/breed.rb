class Breed < ApplicationRecord
    validates_presence_of :name 
    validates :notes, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    has_one_attached :avatar
    validates_presence_of :employee_id {:message => "Employee ID required"}
    validates_presence_of :dog_name
    has_many :appointments
    has_many :owners, through: :appointments


end
