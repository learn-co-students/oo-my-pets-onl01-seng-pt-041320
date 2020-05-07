require "pry"
class Owner 
  
  @@all = []
  attr_accessor :pets
  attr_reader :species, :name
  
  def initialize(name)
    @species = "human"
    
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
     Cat.new(name, self)
  end
	
	def play_with_cats
    cats.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    
    dogs.each do |dog|
      dog.mood = 'happy'
    end 
  end 
  
  def feed_cat
    cats.each do |cat|
    cat.mood = 'happy'
    end 
  end 
    
        
    def feed_cats 
      self.cats.each do |cat|
        cat.mood = 'happy'
      end 
    end 
    
    def list_pets
    num_dogs = self.dogs.size
    num_cats = self.cats.size
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
  
   def sell_pets
    self.cats.each do |cats|
        cats.mood = "nervous"
        cats.owner = nil 
        # binding.pry
    end
    self.dogs.each do |dogs|
      dogs.mood = "nervous"
      dogs.owner = nil 
    end 
  end

end 

