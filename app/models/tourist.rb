class Tourist < ActiveRecord::Base
    has_many :flights   
    has_many :destinations, through: :flights
end