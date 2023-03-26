class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.float :mileage
      t.boolean :drivable
      t.references :hobbyist, foreign_key: true

      t.timestamps
    end
  end
end
