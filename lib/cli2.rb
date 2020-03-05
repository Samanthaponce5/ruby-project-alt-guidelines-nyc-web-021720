# require_relative '../app/models/tourist'


class CommandLineInterface
    

    #create
    def create_tourist(name)
        tourist = Tourist.find_or_create_by(name: name)
    end 

    def to_destination(city, country, depart_date, return_date)
        destination = Destination.find_or_create_by(city: city, country: country, depart_date: depart_date, return_date: return_date)
    end 

    # def flight_detail(name)
    #     flight = Flight.find_by(name: name)
    # end
    #trying to get detail of flight



    # def pick_activity(activity)
    #     activity = Activity.find_or_create_by(activity: activity)
    # end 
    #for activities we could say that as a complemntary bonus for using our site you can pick one of these activities to do at you destination
    #ask the user if they would like to book an activity if not then put that here flight is confirmed i think we would do tht in confirm method
    
    def get_tourist
     puts "Please enter your first name:"
      @name_input = gets.chomp.capitalize
       create_tourist(@name_input)
    end 

    def get_destination
      puts "Please enter the city you'd like to visit:"
        @city_input = gets.chomp.capitalize 
          puts "Please enter the country:"
           @country_input = gets.chomp.capitalize 
             puts "Enter your departure date (MM/DD/YYYY):"
              @depart_date_input = gets.chomp
               puts "Enter your return date (MM/DD/YYYY):"
                @return_date_input = gets.chomp 
                 destination = to_destination(@city_input, @country_input, @depart_date_input, @return_date_input)
    end    

        def p
          price = rand(350...800)
            puts "Going to #{@city_input}, #{@country_input} will cost $#{price}"
             puts "Would you like to confirm this flight to #{@city_input}, #{@country_input}? Please input Yes or No"
              @confirm_flight = gets.chomp.capitalize
        end

    def confirm
        if @confirm_flight == "Yes"
          puts  "Great #{@name_input}! You have booked your flight to #{@city_input}, #{@country_input} from #{@depart_date_input} - #{@return_date_input}!"
             else
               puts "Would you like to choose another destination? Please input Yes or No"
                  @check_another_flight = gets.chomp.capitalize
    
             if @check_another_flight == "Yes"
               get_destination
                 p
                  confirm
             else
                puts "Thank you #{@name_input} for visiting us, hope too see you again soon!"
             end
         end
    end

    # def get_flight_detail
    #     puts "Please put your first name to see flight detail"
    #     input_name = gets.chomp.capitalize
    #     flight_detail(input_name)
    # end


end
    




 # def activity
    #     activities = ["sightseeing", "food tour", "hike", "hop-on hop-off bus", "museum visit", "helicopter tour"] 
    #         puts "Would you like to book an activity" "Looking for a fun activity on your trip?"
    # end 
