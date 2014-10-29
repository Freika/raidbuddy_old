# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  encounter_id   :integer
#  startdate      :datetime
#  starttime      :string(255)
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

require 'rails_helper'

RSpec.describe Event, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
