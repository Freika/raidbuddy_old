FactoryGirl.define do
  factory :event do
    name "MyString"
    encounter_id 1
    startdate "2014-10-30"
    starttime "MyString"
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
