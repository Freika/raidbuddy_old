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
#

FactoryGirl.define do
  factory :encounter do
    name "MyString"
type ""
rated "MyString"
difficulty "MyString"
challenge "MyString"
  end

end
