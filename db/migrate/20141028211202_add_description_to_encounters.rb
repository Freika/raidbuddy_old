class AddDescriptionToEncounters < ActiveRecord::Migration
  def change
    add_column :encounters, :description, :text
  end
end
