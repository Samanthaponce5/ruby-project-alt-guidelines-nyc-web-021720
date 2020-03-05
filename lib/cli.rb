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
     system "figlet -w 90 -c Welcome to travelocity | lolcat -a -d 1 "
    end

    # def greet
    #     puts "Welcome to travelocity!"

    #   end
    end
    
    #just put welcome
#write methods here 