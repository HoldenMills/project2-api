class CreatePastPlaces < ActiveRecord::Migration
  def change
    create_table :past_places do |t|
      t.text :favorite_thing
      t.text :improvement
      t.date :date_begin
      t.date :date_end
    end
  end
end
