class AddParkRefToFutureTrips < ActiveRecord::Migration
  def change
    add_reference :future_trips, :park, index: true, foreign_key: true
  end
end
