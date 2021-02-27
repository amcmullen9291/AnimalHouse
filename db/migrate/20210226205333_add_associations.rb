class AddAssociations < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :appointment_id, :integer, default: nil
  end
end
