class Owner < ApplicationRecord
    has_and_belongs_to_many :appointments
    has_many :breeds through: :appointments 
end
