class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :map_id
      t.integer :faction01_id
      t.integer :faction02_id
      t.integer :faction03_id
      t.integer :faction04_id
      t.integer :faction05_id
      t.integer :faction06_id
      t.integer :faction07_id
      t.integer :faction08_id
      t.integer :faction09_id
      t.integer :faction10_id
      t.integer :faction11_id
      t.integer :faction12_id

      t.timestamps
    end
  end
end
