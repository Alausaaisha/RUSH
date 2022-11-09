class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :province
      t.integer :restaurant_rating

      t.timestamps
    end
  end
end
