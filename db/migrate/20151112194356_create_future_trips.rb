class CreateFutureTrips < ActiveRecord::Migration
    def change
    create_table :future_trips do |t|
      t.text :reason
      t.date :date_begin
      t.date :date_end
    end
  end
end
