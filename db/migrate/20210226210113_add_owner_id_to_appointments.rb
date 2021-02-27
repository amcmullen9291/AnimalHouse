class AddOwnerIdToAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|  
    t.integer :employee_id
    t.integer :owner_id 
    t.integer :breed_id
    t.string :notes
    end
  end
end
