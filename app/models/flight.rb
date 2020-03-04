class Flight < ActiveRecord::Base
belongs_to :tourist
belongs_to :destination
end