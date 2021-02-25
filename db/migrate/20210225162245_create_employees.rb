class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name 
      t.string :bio 
      t.string :title
      t.integer :appointment_id
      t.string :breed_id, default: nil
      t.timestamps
    end
  end
end
