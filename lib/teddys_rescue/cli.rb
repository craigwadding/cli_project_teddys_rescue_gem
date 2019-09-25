class TeddysRescue::CLI

    
    def call 
        puts "\nWelcome to Teddys Rescue!\n"
        puts "Here is a list of our adoptable pets!" 

        @input = "" 
        until @input == "exit"

        
        scrape_pets
        list_pets
        what_to_do_now

        end 
        goodbye 
    end
    
    def scrape_pets
        Scraper.scrape_pets
    end

    def list_pets 
        puts "Select the number for the pet to see more info."
        Dog.all.each.with_index do |dog, index| 
            puts "#{index + 1}. #{dog.name}"
    end

    def get_users_selection

    end
        
    end



    def what_to_do_now 
        puts "Type 'exit' to leave or hit any key to see list of available pets again."
        @input = gets.strip 
    end 

    def goodbye 
        puts "Thank you for visiting Teddys Rescue!" 
    end

end