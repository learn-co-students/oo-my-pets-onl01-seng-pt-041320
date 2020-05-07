require "pry"
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
    
    def sell_pets 
      @pets.each do |type , name|
      name.each do |pet|
      pet.mood = 'nervous'
    end 
  end 
  @pets = {}
end 
        
    def feed_cats 
      @cat.each do |cat|
        cat.mood = 'happy'
      end 
    end 
    
    def list_pets
    num_dogs = @pets[:dogs].size
    num_cats = @pets[:cats].size
    return "I have #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
  
   def sell_pets
    @pets.collect do |species, owner|
      owner.each do |pet|
        pet.mood = "nervous"
      end
      owner.clear
    end
  end

end 

