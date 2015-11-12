class PastPlace < ActiveRecord::Base
  belongs_to :profile
  belongs_to :park
end
