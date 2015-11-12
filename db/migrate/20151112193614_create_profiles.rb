class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_name
      t.string :surname
      t.string :given_name
      t.string :favorite_park
      t.string :home_state
    end
  end
end
