class AddCommentsToOwners < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :comments, :string
    end
end
