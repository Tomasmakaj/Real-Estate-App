class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :like
      t.integer :owner_id
      t.integer :house_id
      t.integer :apartment_id
    end
  end
end
