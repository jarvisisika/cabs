class CreateCabs < ActiveRecord::Migration[7.0]
  def change
    create_table :cabs do |t|
      t.string :name
      t.string :license_plate
      t.integer :capacity

      t.timestamps
    end
  end
end
