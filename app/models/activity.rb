class Activity <ActiveRecord::Base
    has_many :itineraries
    has_many :destinations, through: :itineraries
end 

