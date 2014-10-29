class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :encounter_id
      t.datetime :startdate
      t.string :starttime
      t.string :endtime
      t.text :description
      t.string :playstyle
      t.integer :tanks
      t.integer :healers
      t.integer :dps
      t.string :loottype
      t.integer :min_level
      t.integer :min_item_level

      t.timestamps
    end
  end
end
