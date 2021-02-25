class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
      t.string :email
      t.string :telephone
      t.string :email_confirmation 
      t.boolean :other_dogs 
      t.timestamps
    end
  end
end
