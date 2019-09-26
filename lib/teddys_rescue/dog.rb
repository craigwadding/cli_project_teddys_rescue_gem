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
 
  def self.find_by_input(input)
    self.all.find do |dog| 
     input == dog.name 
    end
  end
 
end