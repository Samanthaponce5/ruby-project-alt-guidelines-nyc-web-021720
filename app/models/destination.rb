class Destination < ActiveRecord::Base
has_many :flights 
has_many :tourists, through: :flights
end