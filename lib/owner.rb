require 'pry'
class Owner
    attr_accessor 
    attr_reader :name, :species

    @@all = []
    

  def initialize(name, species = "human")
    @species = species 
    @name = name
   
    @@all << self
    

  end

  def self.all
    @@all
  end 

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end 

  def say_species
    "I am a #{@species}."
  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end 

  

  def dogs 
    Dog.all.select{|doggo| doggo.owner == self}
  end 


  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self) 
  end

  def walk_dogs
    self.dogs.collect{|dog| dog.mood = "happy"}
  end

  def feed_cats 
    self.cats.collect{|cat| cat.mood = "happy"}
  end 

  def sell_pets
    pets = self.dogs + self.cats
    pets.collect{ |pet| pet.mood = "nervous"}
    pets.collect{ |pet| pet.owner = nil}
  end 

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    
  end 



    
    
    

    
  

  
end 
    
  


 
  
  


