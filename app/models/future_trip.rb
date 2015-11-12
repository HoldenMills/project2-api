class FutureTrip < ActiveRecord::Base
  belongs_to :profile
  belongs_to :park
end
