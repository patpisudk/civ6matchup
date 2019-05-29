class CreateMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :land_weight
      t.string :water_weight

      t.timestamps
    end
  end
end
