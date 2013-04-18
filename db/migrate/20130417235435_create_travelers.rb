class CreateTravelers < ActiveRecord::Migration
  def change
    create_table :travelers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :what_place_did_you_visit
      t.date :date_of_your_trip
      t.integer :number_of_people_traveling_with_you
      t.string :what_transport_did_you_use

      t.timestamps
    end
  end
end
