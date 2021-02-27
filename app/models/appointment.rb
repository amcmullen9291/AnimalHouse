class Appointment < ApplicationRecord
    has_and_belongs_to_many :owners
    has_many :breeds 
end
