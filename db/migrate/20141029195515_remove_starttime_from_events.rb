class RemoveStarttimeFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :starttime
  end
end
