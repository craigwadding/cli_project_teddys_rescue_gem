class TeddysRescue::Scraper
  
  def self.scrape_pets 
    doc = Nokogiri::HTML(open("http://teddysrescue.org/adoptable-pets/adoptable-dogs/?view=mobile"))
    
    doc.css("#pageText h1").each do |pet|
        name = pet.text 
        TeddysRescue::Pet.new({
            bio: pet.css("#pageText h2").text 
            
        }) 
        

    
        
  end
end
end 

