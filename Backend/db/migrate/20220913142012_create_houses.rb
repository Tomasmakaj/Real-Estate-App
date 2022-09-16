class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.integer :price
      t.string :detail
      t.string :location
      t.string :image
      t.boolean :like
      t.boolean :is_house
    end
  end
end
