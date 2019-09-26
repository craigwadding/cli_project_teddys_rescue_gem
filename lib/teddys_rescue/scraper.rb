class Scraper
  
  def self.scrape_pets 
    doc = Nokogiri::HTML(open("http://teddysrescue.org/adoptable-pets/adoptable-dogs/?view=mobile"))
    
    doc.css("div.pageTitle").drop(2).each do |dog|
         
        name = dog.css("#mainTitle.pageTitle").text
        bio = dog.css("#subTitle.pageTitle").text 
        
         
        Dog.new(name, bio)

        
        
    end
    
  end
  
end 

