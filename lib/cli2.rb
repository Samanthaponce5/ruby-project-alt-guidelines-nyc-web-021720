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
          price = rand(350...800)
            puts "Going to #{@city_input}, #{@country_input} will cost $#{price}"
             puts "Would you like to confirm this flight to #{@city_input}, #{@country_input}? Please input Yes or No"
              @confirm_flight = gets.chomp.capitalize
        end

    def confirm
        if @confirm_flight == "Yes"
            activity
          puts  "Great #{@name_input}! You have booked your flight to #{@city_input}, #{@country_input} from #{@depart_date_input} - #{@return_date_input}#{@final_chosen}!"
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
    
end
    




 