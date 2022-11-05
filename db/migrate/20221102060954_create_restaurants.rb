class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :province
      t.string :food_name
      t.integer :restaurant_rating
      t.integer :food_price
      t.string :food_image

      t.timestamps
    end
  end
end
