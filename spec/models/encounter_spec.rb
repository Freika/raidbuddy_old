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

require 'rails_helper'

describe Encounter, type: :model do
  let(:encounter) { create :encounter }

end
