class Appointment < ApplicationRecord
    has_many :breeds 
    has_and_belongs_to_many :owners
end
