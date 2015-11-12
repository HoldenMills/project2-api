class Park < ActiveRecord::Base
  has_many :past_place
  has_many :future_trip
end
