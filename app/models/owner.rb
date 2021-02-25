class Owner < ApplicationRecord
    has_many_and_belongs_to :appointments
    has_many :breeds through: :appointments 
end
