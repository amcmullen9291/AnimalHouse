class Employee < ApplicationRecord
    has_many_and_belongs_to :appointments 
end
