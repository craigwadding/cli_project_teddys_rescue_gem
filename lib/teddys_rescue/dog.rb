class Dog
  attr_accessor :name, :bio
  @@all = []

  def self.all
  @@all 
  end

  def initialize(name, bio)
  @name = name
  @bio = bio
  
   
  @@all << self
  end


end