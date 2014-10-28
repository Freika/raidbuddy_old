class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :name
      t.string :type
      t.string :rated
      t.string :difficulty
      t.string :challenge

      t.timestamps
    end
  end
end
