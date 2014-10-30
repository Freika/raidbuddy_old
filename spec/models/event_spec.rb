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

require 'rails_helper'

describe Event, type: :model do
  let(:event) { create :event }
  it 'cannot be created if startdate is in the past' do
    event.startdate = Time.now - 2.hours
    puts event
    expect(event).not_to be_valid
  end
end
