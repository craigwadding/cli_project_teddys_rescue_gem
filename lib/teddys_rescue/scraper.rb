class Scraper
  
  def self.scrape_pets 
    doc = Nokogiri::HTML(open("http://teddysrescue.org/adoptable-pets/adoptable-dogs/?view=mobile"))
    
    doc.css(".pageTitle").each do |dog|
         
        name = dog.css("h1.pageTitle").text
        bio = dog.css("h2.pageTitle").text 
        
         
        Dog.new(name, bio)

        
        
    end
    
  end
  
end 

