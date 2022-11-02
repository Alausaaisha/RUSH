class CreateRiders < ActiveRecord::Migration[7.0]
  def change
    create_table :riders do |t|
      t.string :name
      t.string :province
      t.integer :phone
      t.integer :fee
      t.belongs_to :user
      t.belongs_to :restaurant

      t.timestamps
    end
  end
end
