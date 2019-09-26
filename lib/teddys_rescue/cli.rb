class TeddysRescue::CLI
    def call
        welcome
        scrape_pets
        list_pets
        dog_choice
    end
    
    def welcome 
        puts "\nWelcome to Teddys Rescue!\n"
    end

    def user_choice
        puts "Would you like to see the dogs that we have available?      (y/n)"
        get_input
    end

    def get_input

        input = gets.chomp.downcase

       
        if input == "y"
            puts "Here is a list of available dogs to adopt."
            
            list_pets
        elsif input == "n"
            goodbye 
        else
            puts "Sorry, please select y or n."
            welcome
        end
     
    end

    def scrape_pets
        Scraper.scrape_pets
    end
   

    def list_pets
        puts "\nPlease type in the name of the pet to see more info."
        Dog.all.each.with_index do |dog, index| 
            puts "#{index + 1}. #{dog.name}"
        end
        dog_choice    
    end

    def dog_choice
        
        input = gets.chomp

        @dog = Dog.find_by_input(input) 

        if Dog.all.include?(@dog)
       
            puts "#{@dog.bio}"
            puts "_______________________________________________________"
            user_choice
        else
            puts "Sorry, to choose dog please type their name."
            list_pets
        end
    end

    def goodbye 
        puts "\nThank you for visiting Teddys Rescue!\n" 
        exit
    end

end
