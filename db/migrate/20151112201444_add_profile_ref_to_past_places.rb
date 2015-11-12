class AddProfileRefToPastPlaces < ActiveRecord::Migration
  def change
    add_reference :past_places, :profile, index: true, foreign_key: true
  end
end
