class RemoveColumnsFromEnconters < ActiveRecord::Migration
  def change
    remove_column :encounters, :rated
    remove_column :encounters, :difficulty
    remove_column :encounters, :challenge
  end
end
