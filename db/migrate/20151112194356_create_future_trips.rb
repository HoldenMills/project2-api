class CreateFutureTrips < ActiveRecord::Migration
    def change
    create_table :future_trips do |t|
      t.integer :park_id
      t.integer :profile_id
      t.text :reason
      t.date :date_begin
      t.date :date_end
    end
  end
end
