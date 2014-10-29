# Events model
class Event < ActiveRecord::Base
  has_one :encounter
  belongs_to :user
end
