class CreateTheEleanorGrigsbyFamilies < ActiveRecord::Migration[6.1]
  def change
    create_table :the_eleanor_grigsby_family do |t|
      t.string :first_name
      t.string :last_name 
      t.string :bio 
      t.integer :appointment_id
      t.timestamps
    end
  end
end
