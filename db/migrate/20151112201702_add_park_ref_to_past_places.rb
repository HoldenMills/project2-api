class AddParkRefToPastPlaces < ActiveRecord::Migration
  def change
    add_reference :past_places, :park, index: true, foreign_key: true
  end
end
