class Breed < ApplicationRecord
    validates_presence_of :name 
    validates :notes, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
    has_one_attached :avatar
    has_many :appointments
    has_many :owners, through: :appointments

end
