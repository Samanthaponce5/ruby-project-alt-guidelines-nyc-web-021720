require "tty-prompt"
require 'figlet'

class CommandLineInterface
    # prompt = TTY::Prompt.new
    # def greet
    #        'Welcome to travelocity!'
    #       end
    #     end
    # def prompt_instance
    #     @prompt = TTY::Prompt.new
    # end
    
    def greet
     system "figlet -w 98 -c Welcome to TravelPro | lolcat -a -d 1 "
    end

    end
    
    #just put welcome
#write methods here 