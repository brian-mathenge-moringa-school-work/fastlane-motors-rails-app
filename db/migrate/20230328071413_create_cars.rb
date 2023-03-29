class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :image
      t.string :description
      t.string :price
      t.integer :year_of_manufacture
      t.string :source_country
      t.string :availability
      t.string :drive
      t.string :mileage
      t.string :engine_size
      t.string :fuel
      t.string :transmission

      t.timestamps
    end
  end
end
