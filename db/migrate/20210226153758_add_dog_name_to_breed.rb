class AddDogNameToBreed < ActiveRecord::Migration[6.1]
  def change
    add_column :breeds, :dogs_name, :string, nil: false
  end
end
