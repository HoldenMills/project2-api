class RemoveProfileRefFromFutureTrips < ActiveRecord::Migration
  def change
    remove_reference :future_trips, :profile, index: true, foreign_key: true
  end
end
