class RenameTypeToStyleInEncounters < ActiveRecord::Migration
  def change
    rename_column :encounters, :type, :style
  end
end
