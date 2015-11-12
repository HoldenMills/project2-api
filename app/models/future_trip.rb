class FutureTrip < ActiveRecord::Base
  belongs to :profile
  belongs to :park
end
