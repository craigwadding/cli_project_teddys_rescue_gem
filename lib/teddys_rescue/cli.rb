class TeddysRescue::CLI 
    
    def call 
        puts "\nWelcome to Teddys Rescue!\n"
        puts "\nHere is a list of our adoptable pets!\n" 

        @input = "" 
        until @input == "exit"

        get_pets
        list_pets
        get_user_pet
        what_to_do_now
        end 
        goodbye 
    end
    def get_pets
        
        @pets = TeddysRescue::Pet.all 
    end
    

    def list_pets 
        puts "Select the number for the pet to see more info."
        @pets.each.with_index(1) do |pet, index| 
          puts "#{index}. #{pet.name}"
        end
      end

    def get_user_pet
        chosen_pet = gets.strip.to_i
        show_pet_info(chosen_pet) if valid_input(chosen_pet, @pets)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0 
    end

    def show_pet_info(chosen_pet)
        pet = @pets[chosen_pet - 1]
        pet.get_pet_info 
        puts "Here is the info for #{pet.name}" 
        bio.each.with_index(1) do |bio, idx| 
            puts "#{idx}. #{bio.name}"
        end 
        get
        
        
    end 

    def what_to_do_now 
        puts "Type 'exit' to leave or hit any key to see list of available pets again."
        @input = gets.strip 
    end 

    def goodbye 
        puts "Thank you for visiting Teddys Rescue!" 
    end
           
    
end