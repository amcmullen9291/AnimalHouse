class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
