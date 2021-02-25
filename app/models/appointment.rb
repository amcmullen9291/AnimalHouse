class Appointment < ApplicationRecord
    has_many :breeds 
    has_many_and_belongs_to :owners
end
