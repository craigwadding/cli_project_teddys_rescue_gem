class TeddysRescue::Pet
  attr_accessor :bio, :name
  @@all = []

def self.all
    TeddysRescue::Scraper.scrape_pets if @@all.empty? 
  @@all 
end

def initialize(bio)
  @name = name 
  @bio = bio
   
  save    
end

def get_pet_info
    TeddysRescue::Scraper.scrape_info(self) if @bio.empty? 
end

def save
  @@all << self 
end
    

end