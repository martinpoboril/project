class Comment < ActiveRecord::Base
  attr_accessible :traveler_id, :your_comment
  
  belongs_to :traveler
  
  validates :your_comment, :length => { :maximum => 200 }
end
