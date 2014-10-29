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

FactoryGirl.define do
  factory :event do
    name "MyString"
    encounter_id 1
    startdate "2014-10-30"
    endtime "MyString"
    description "MyText"
    playstyle "MyString"
    tanks 1
    healers 1
    dps 1
    loottype "MyString"
    min_level 1
    min_item_level 1
  end

end
