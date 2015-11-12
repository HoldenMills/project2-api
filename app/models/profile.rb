class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :past_places
  has_many :future_trips
end
