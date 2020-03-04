require_relative '../config/environment'
# require_relative '..app/models/tourist.rb'
Tourist.destroy_all

t1 = Tourist.create(name: "Vanessa", age: 30)
t2 = Tourist.create(name: "Samantha", age: 20)
t3 = Tourist.create(name: "Diana", age: 20)
t4 = Tourist.create(name: "Jose", age: 45)

d1 = Destination.create(city: "Zurich", country: "Switzerland")
d2 = Destination.create(city: "Paris", country: "France")
d3 = Destination.create(city: "San Jose", country: "Costa Rica")
d4 = Destination.create(city: "Cairns", country: "Australia")
d5 = Destination.create(city: "Dubai", country: "United Arab Emirates")

f1 = Flight.create(tourist_id:1, destination_id:3)
f2 = Flight.create(tourist_id:2, destination_id:1)
f3 = Flight.create(tourist_id:3, destination_id:5)
f4 = Flight.create(tourist_id:4, destination_id:2)

a1 = Activity.create(activity: "hiking")
a2 = Activity.create(activity: "sightseeing")
a3 = Activity.create(activity: "ziplining")
a4 = Activity.create(activity: "scuba diving")
a5 = Activity.create(activity: "sky diving")

i1 = Itinerary.create(destination_id:1, activity_id:1)
i2 = Itinerary.create(destination_id:2, activity_id:2)
i3 = Itinerary.create(destination_id:3, activity_id:3)
i4 = Itinerary.create(destination_id:4, activity_id:4)
i5 = Itinerary.create(destination_id:5, activity_id:5)


#test