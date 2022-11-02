class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :province
      t.string :menu
      t.text :description
      t.integer :rating
      t.integer :price

      t.timestamps
    end
  end
end
