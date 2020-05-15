require 'pry'
class Owner
  attr_accessor 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name.freeze
    @species = species.freeze
    @@all << self
  end 
  
  def say_species
    "I am a #{species}."
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
  
  def cats 
    Cat.all.select{|cats| cats.owner == self}
  end 
  
  def dogs 
    Dog.all.select{|dogs| dogs.owner == self}
  end
  
  def buy_cat(name)
     Cat.new(name, self)
  end
  
  def buy_dog(name)
     Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.map{|info| info.mood = "happy"}  
  end
  
  def feed_cats
    cats.map{|info| info.mood = "happy"}  
  end
  
  def sell_pets
    dogs.map {|info| info.mood = "nervous"}
    dogs.map {|info| info.owner = nil}
    cats.map {|info| info.mood = "nervous"}
    cats.map {|info| info.owner = nil}
#    binding.pry
  end
  
  def list_pets 
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end 
  
  
end