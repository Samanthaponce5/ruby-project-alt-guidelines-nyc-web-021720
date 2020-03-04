# require_relative '../app/models/tourist'


class CommandLineInterface
    
    def create_tourist(name, age)
        tourist = Tourist.find_or_create_by(name: name, age: age)
    end 

    def to_destination(city, country)
        destination = Destination.find_or_create_by(city: city, country: country)
    end 

    def pick_activity(activity)
        activity = Activity.find_or_create_by(activity: activity)
    end 

    def get_tourist
        puts "Please enter your first name:"
        name_input = gets.chomp
        puts "Please enter your age:"
        age_input = gets.chomp.to_i 
        create_tourist(name_input, age_input)
    end 
end 