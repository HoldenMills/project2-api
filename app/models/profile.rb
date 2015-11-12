class Profile < ActiveRecord::Base
  has_many :user
  has_many :past_place
  has_many :future_trip
end
