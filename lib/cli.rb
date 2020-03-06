require "tty-prompt"
require 'figlet'

class CommandLineInterface
    
    def greet
     system "figlet -w 98 -c Welcome to TravelPro | lolcat -a -d 1 "
    end

    end
