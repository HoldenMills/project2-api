class AddProfileRefToFutureTrips < ActiveRecord::Migration
  def change
    add_reference :future_trips, :profile, index: true, foreign_key: true
  end
end
