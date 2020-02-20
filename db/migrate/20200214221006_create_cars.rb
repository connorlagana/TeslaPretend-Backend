class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :color
      t.string :wheel
      t.string :battery
      t.string :interior
      t.boolean :autopilot
      t.integer :price
      t.string :image
      t.boolean :done
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
