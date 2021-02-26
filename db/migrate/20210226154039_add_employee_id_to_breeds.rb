class AddEmployeeIdToBreeds < ActiveRecord::Migration[6.1]
  def change
    add_column :breeds, :employee_id, :integer
  end
end
