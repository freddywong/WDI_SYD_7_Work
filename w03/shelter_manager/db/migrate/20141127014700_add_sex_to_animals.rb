class AddSexToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :sex, :string
    remove_column :animals, :gender
  end
end
