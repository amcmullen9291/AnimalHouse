class Breeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.string :hair_length
      t.string :temperment
      t.string :height
      t.string :weight
      t.string :notes
      t.string :group, default: "Toy Group"
    end 
  end
end
