# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  encounter_id   :integer
#  startdate      :datetime
#  endtime        :string(255)
#  description    :text
#  playstyle      :string(255)
#  tanks          :integer
#  healers        :integer
#  dps            :integer
#  loottype       :string(255)
#  min_level      :integer
#  min_item_level :integer
#  created_at     :datetime
#  updated_at     :datetime
#  user_id        :integer
#

# Events model
class Event < ActiveRecord::Base
  has_one :encounter
  belongs_to :user
  validates :name, :encounter_id, :startdate, :endtime, :description,
            :playstyle, :min_level, presence: true
  validates_datetime :startdate, after: :now
end
