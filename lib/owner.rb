require 'pry'

class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all.push(self)
    
  end
  
  def say_species
    'I am a ' + @species + '.'
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
    @cats = Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    @dogs = Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(pet_name)
    new_cat = Cat.new(pet_name, owner = self)
  end
  
  def buy_dog(pet_name)
    new_dog = Dog.new(pet_name, owner = self)
  end
  
  def walk_dogs
    dogs
    @dogs.each{|dog| dog.mood = 'happy'}
  end
  
  def feed_cats
    cats
    @cats.each{|cat| cat.mood = 'happy'}
  end
  
  def list_pets
    cats
    dogs
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
  
  def sell_pets
    cats
    @cats.each {|cat| cat.mood = 'nervous'}
    @cats.each {|cat| cat.owner = nil}
    @cats = []
    dogs
    @dogs.each {|dog| dog.mood = 'nervous'}
    @dogs.each {|dog| dog.owner = nil}
    @dogs = []
  end
  
  
end