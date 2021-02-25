class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :breed_id, default: nil
      t.integer :employee_id, default: nil
      t.string :notes
      t.timestamps
    end
  end
end
