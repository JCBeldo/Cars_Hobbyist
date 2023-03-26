class CreateHobbyists < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbyists do |t|
      t.string :name
      t.boolean :insurance
      t.integer :garage_capacity

      t.timestamps
    end
  end
end
