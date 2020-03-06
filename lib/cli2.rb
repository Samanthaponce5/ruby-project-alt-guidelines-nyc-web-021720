# require_relative '../app/models/tourist'
require "tty-prompt"
require 'figlet'
require 'pry'

class CommandLineInterface
    

    def create_tourist(name)
        tourist = Tourist.find_or_create_by(name: name)
    end 

    def to_destination(city, country, depart_date, return_date)
        destination = Destination.find_or_create_by(city: city, country: country, depart_date: depart_date, return_date: return_date)
    end 

    def get_flights(tourist, destination)
        @confirmation_n = rand(100...9000)
        flight = Flight.find_or_create_by(tourist_id: tourist.id, destination_id: destination.id, confirmation_num: @confirmation_n)
        system "echo Your flight confirmation number is #{@confirmation_n}. | lolcat"
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

    def confirm(tourist, destination)
        if @confirm_flight == "Yes"
        activity
        system "echo Great, #{@name_input}! You have booked your flight to #{@city_input}, #{@country_input} from #{@depart_date_input} - #{@return_date_input}#{@final_chosen}. | lolcat"
        puts "          "
        get_flights(tourist, destination)
        end_options
        end_option_test
        

             else
               puts "Would you like to choose another destination? Please input Yes or No"
                  @check_another_flight = gets.chomp.capitalize
    
             if @check_another_flight == "Yes"
               new_destination = get_destination
                 p
                  confirm(tourist, new_destination)
             else
                system "echo Thank you #{@name_input} for visiting us, hope too see you again soon! | lolcat"
             end
         end
    end

    def end_options
        prompt = TTY::Prompt.new
        yes_options = prompt.yes?("Would you like to update or cancel your flight?")
        if yes_options
           @choices = prompt.select('Choose') do |menu|
                menu.choice 'Update'
                menu.choice 'Delete'
                menu.choice 'Exit'
                
            end 
            @picked = @choices
            
        end
        
    end
    def end_option_test
      if @picked == 'Delete'
        cancel_flight
      elsif 
        @picked == 'Exit'
      # puts "Enjoy your trip!"
       system "echo Enjoy your trip!| lolcat -a -d 500"

                
       exit
      end
      
    end
    
    def cancel_flight
        puts "Please enter the confirmation number of the flight you'd like to cancel:"
        @confirmation_n = gets.chomp 
        if flight = Flight.find_by(confirmation_num: @confirmation_n)
            flight.delete
            system "echo Your flight to #{@city_input}, #{@country_input} has been canceled. | lolcat -a -d 500"
            exit
        # else 
        #     puts "Please enter a valid confirmation number."
        #     cancel_flight
            
        end    
    end 


end 
    
    

    