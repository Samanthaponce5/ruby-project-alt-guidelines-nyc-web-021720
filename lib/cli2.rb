# require_relative '../app/models/tourist'


class CommandLineInterface
    
    #create
    def create_tourist(name)
        tourist = Tourist.find_or_create_by(name: name)
    end 

    def to_destination(city, country, depart_date, return_date)
        destination = Destination.find_or_create_by(city: city, country: country, depart_date: depart_date, return_date: return_date)
    end 

    # def pick_activity(activity)
    #     activity = Activity.find_or_create_by(activity: activity)
    # end 

    def get_tourist
            puts "Please enter your first name:"
        name_input = gets.chomp
        create_tourist(name_input)
    end 

    def get_destination
            puts "Please enter the city you'd like to visit:"
        city_input = gets.chomp 
            puts "Please enter the country:"
        country_input = gets.chomp 
            puts "Enter your departure date (MM/DD/YYYY):"
        depart_date_input = gets.chomp
            puts "Enter your return date (MM/DD/YYYY):"
        return_date_input = gets.chomp 
        destination = to_destination(city_input, country_input, depart_date_input, return_date_input)
        price = rand(350...800)
            puts "Going to #{city_input}, #{country_input} will cost $#{price}"
            puts "Would you like to confirm this flight to #{city_input}, #{country_input}? Please input Yes or No"
        confirm_flight = gets.chomp
        if confirm_flight == "Yes"
            puts  "Great! You have booked your flight to #{city_input}, #{country_input}! "
        else
            puts "Would you like to choose another destination?"
        end 
    end

    # def activity
    #     activities = ["sightseeing", "food tour", "hike", "hop-on hop-off bus", "museum visit", "helicopter tour"] 
    #         puts "Would you like to book an activity" "Looking for a fun activity on your trip?"
    # end 
end  
