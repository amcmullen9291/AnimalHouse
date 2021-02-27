class Appointment < ApplicationRecord
    has_and_belongs_to_many :owners
    has_many :breeds 
    validates_presence_of :notes, :message => "will make the introductions easier."
end
