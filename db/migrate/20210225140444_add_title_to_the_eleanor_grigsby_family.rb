class AddTitleToTheEleanorGrigsbyFamily < ActiveRecord::Migration[6.1]
  def change
    add_column :the_eleanor_grigsby_family, :title, :string
  end
end
