require 'pry'
class Owner
  attr_reader :name,:species
  attr_accessor :pets, :dog, :cat

  @@all = []
  #@@pets = {:dogs => [], :cats => []}

  def initialize(name, species = "human")
    @species = species
    @name = name
    @@all << self
  end

def say_species
  "I am a #{self.species}."
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

def cats
  #binding.pry
  Cat.all.select {|cat| cat.owner == self}
end

def dogs
  Dog.all.select { |dog| dog.owner == self}
end

def buy_cat(name)
  Cat.new(name, self)

end

def buy_dog(name)

  Dog.new(name, self)
end

def walk_dogs
  #binding.pry
  self.dogs.each { |dog| dog.mood = "happy"}
end

def feed_cats
self.cats.each { |cat| cat.mood = "happy"}
end

def sell_pets
  pets = self.dogs + self.cats
  #binding.pry
  pets.each { |pet| pet.owner = nil 
   pet.mood = "nervous"}
  
end

def list_pets
  "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
end



end