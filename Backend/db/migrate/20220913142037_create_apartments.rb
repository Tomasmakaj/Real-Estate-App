class CreateApartments < ActiveRecord::Migration[6.1]
    def change
      create_table :apartments do |t|
        t.integer :price
        t.string :detail
        t.string :location
        t.string :image
        t.boolean :like
    end
  end
end

