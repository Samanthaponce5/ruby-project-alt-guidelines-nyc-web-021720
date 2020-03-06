# require_relative '../app/models/tourist'
require "tty-prompt"
require 'figlet'

class CommandLineInterface
    

    def create_tourist(name)
        tourist = Tourist.find_or_create_by(name: name)
    end 

    def to_destination(city, country, depart_date, return_date)
        destination = Destination.find_or_create_by(city: city, country: country, depart_date: depart_date, return_date: return_date)
    end 

    # def confirmation_number
    #     @confirmation_n = rand(100...9000)
    #     puts "Your flight confirmation number is #{@confirmation_n}."
    # end 

    def get_flights
        @confirmation_n = rand(100...9000)
        flight = Flight.find_or_create_by(tourist_id: nil, destination_id: nil, confirmation_num: @confirmation_n)
        puts "Your flight confirmation number is #{@confirmation_n}."
    end 

    def get_tourist
     puts "Please enter your first name:"
      @name_input = gets.chomp.capitalize
       create_tourist(@name_input)
    end 

    def activity
        prompt = TTY::Prompt.new
        yes_activity = prompt.yes?("Would you like to book an activity with your flight?")
        if yes_activity
        @chosen = prompt.select('Choose your activity of choice') do |menu|
            menu.default 7
          
            menu.choice 'sightseeing'
            menu.choice 'food tour'
            menu.choice 'hiking'
            menu.choice 'hop-on hop-off bus'
            menu.choice 'museum visit'
            menu.choice 'helicopter tour'
            menu.choice 'no activity'
           end 
        @final_chosen = " and an activity of #{@chosen}"
    end
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
        price = rand(350...600)
        puts "Going to #{@city_input}, #{@country_input} will cost $#{price}"
            puts "Would you like to confirm this flight to #{@city_input}, #{@country_input}? Please input Yes or No"
            @confirm_flight = gets.chomp.capitalize
    end

    def confirm
        if @confirm_flight == "Yes"
        activity
        puts "Great, #{@name_input}! You have booked your flight to #{@city_input}, #{@country_input} from #{@depart_date_input} - #{@return_date_input}#{@final_chosen}."
        puts "          "
        get_flights

             else
               puts "Would you like to choose another destination? Please input Yes or No"
                  @check_another_flight = gets.chomp.capitalize
    
             if @check_another_flight == "Yes"
               get_destination
               get_flights
                 p
                  confirm
             else
                system "echo Thank you #{@name_input} for visiting us, hope too see you again soon! | lolcat -a -d 500"
             end
         end
    end
    
    def cancel_flight
        puts "Please enter the confirmation number of the flight you'd like to cancel:"
        @confirmation_n = gets.chomp 

        flight = Flight.find_by(@confirmation_n)
        if flight == flight 
                flight.delete
                puts "Your flight to #{@city_input}, #{@country_input} has been canceled."
            else 
                puts "Thanks for visiting TravelPro! Have a safe flight."
        end 
    end 
end 
    
    
# def get_destination
#     puts "Please enter the city you'd like to visit:"
#       @city_input = gets.chomp.capitalize 
#         puts "Please enter the country:"
#          @country_input = gets.chomp.capitalize 
#            puts "Enter your departure date (MM/DD/YYYY):"
#             @depart_date_input = gets.chomp
#              puts "Enter your return date (MM/DD/YYYY):"
#               @return_date_input = gets.chomp 
    