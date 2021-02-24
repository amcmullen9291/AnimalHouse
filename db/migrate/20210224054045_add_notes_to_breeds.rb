class AddNotesToBreeds < ActiveRecord::Migration[6.1]
  def change
    add_column :breeds, :notes, :string
    remove_column :breeds, :group, :string 
    add_column :breeds, :group, :string, default: "Toy Group"
  end
end
