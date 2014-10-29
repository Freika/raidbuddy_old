# == Schema Information
#
# Table name: encounters
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  style       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  expansion   :string(255)
#

class Encounter < ActiveRecord::Base
  STYLE = %w( PvP PvE )
  EXPANSIONS = ['Vanilla', 'The Burning Crusade', 'Wrath of the Lich-King',
                'Cataclysm', 'Mists of Pandaria', 'Warlords of Draenor']
  belongs_to :event
  validates :name, :style, :description, :expansion, presence: :true
  validates :style, inclusion: { in: STYLE }
  validates :expansion, inclusion: { in: EXPANSIONS }
end
