class CreateFactions < ActiveRecord::Migration[5.1]
  def change
    create_table :factions do |t|
      t.integer :civ_id
      t.integer :leader_id
      t.string :dom_score_land
      t.string :dom_score_water
      t.string :dom_def_land
      t.string :dom_def_water
      t.string :sci_score_land
      t.string :sci_score_water
      t.string :sci_def_land
      t.string :sci_def_water
      t.string :cul_score_land
      t.string :cul_score_water
      t.string :cul_def_land
      t.string :cul_def_water
      t.string :rel_score_land
      t.string :rel_score_water
      t.string :rel_def_land
      t.string :rel_def_water
      t.string :dip_score_land
      t.string :dip_score_water
      t.string :dip_def_land
      t.string :dip_def_water

      t.timestamps
    end
  end
end
