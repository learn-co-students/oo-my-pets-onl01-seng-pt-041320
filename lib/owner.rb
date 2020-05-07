class Owner 
  
  @@all = []
  attr_accessor :pets
  attr_reader :species, :name
  
  def initialize(name)
    @species = "human"
    @pets = {cats: [], dogs:[]}
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count
    @@all.length
  end
  
 def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def pets
    @@pets
  end
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self 
  end 
end 
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 
  
   def buy_cat(name)
    @pets[:cats] << Cat.new(name, owner)
  end
	
	def play_with_cats
    @@pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end
end 

def owner 
  @self
end 