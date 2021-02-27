class AddOwnerIdToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :owner_id, :integer
  end
end
