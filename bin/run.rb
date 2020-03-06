require_relative '../config/environment'


cli = CommandLineInterface.new
cli.greet 
tourist = cli.get_tourist
destination = cli.get_destination
cli.p
cli.confirm(tourist, destination)
cli.end_option_test



#cli.end_options
#cli.test
#cli.cancel_flight
#cli.activity
#cli.get_flight_detail

 
