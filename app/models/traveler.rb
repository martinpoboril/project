class Traveler < ActiveRecord::Base
  attr_accessible :date_of_your_trip, :email, :first_name, :last_name, :number_of_people_traveling_with_you, :what_place_did_you_visit, :what_transport_did_you_use
  has_many :comments
end
