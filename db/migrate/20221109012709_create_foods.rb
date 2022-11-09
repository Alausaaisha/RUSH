class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image_url
      t.integer :price
      t.text :description
      t.belongs_to :restaurant

      t.timestamps
    end
  end
end
