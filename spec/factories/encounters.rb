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

FactoryGirl.define do
  factory :encounter do
    name 'Arathi Basin'
    type %w( PvE PvP ).sample
    description 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                Praesentium harum officia qui, dolore totam quia unde ratione
                perferendis expedita non.'
    expansion Encounter::EXPANSIONS.sample
  end

end
