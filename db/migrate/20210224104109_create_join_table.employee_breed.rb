class CreateJoinTableEmployeeBreed < ActiveRecord::Migration[6.1]
  def change
    create_join_table :employees, :breeds do |t|
      t.index [:employee_id, :breed_id] 
      t.index [:breed_id, :employee_id]
      t.string :notes
      t.timestamps
    end
  end
end
