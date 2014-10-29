class AddExpansionToEncounter < ActiveRecord::Migration
  def change
    add_column :encounters, :expansion, :string
  end
end
