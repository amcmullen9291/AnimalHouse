class AddCheckBoxToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :admin, :boolean 
  end
end
