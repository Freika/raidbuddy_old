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

require 'rails_helper'

RSpec.describe Encounter, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
