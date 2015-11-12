class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :designation
      t.string :state
      t.integer :year_authorized
    end
  end
end
