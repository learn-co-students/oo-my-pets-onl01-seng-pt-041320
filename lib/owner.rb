require 'pry'
class Owner

  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    #@pet_cats = []
    #@pet_dogs = []
    @pets_owned = {:cat => [], :dog => []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def cats
    Cat.all.find_all{|cat| cat.owner == self}    
    #@pet_cats
    #@pets_owned[:cat]
    #binding.pry
  end

  def dogs
    Dog.all.find_all{|dog| dog.owner == self}
    #@pet_dogs
    #@pets_owned[:dog]
  end

  def buy_cat(cat_name)
    @pets_owned[:cat] << Cat.new(cat_name, self)
    #binding.pry
  end

  def buy_dog(dog_name)
    @pets_owned[:dog] << Dog.new(dog_name, self)
  end

  def walk_dogs
    dogs.each do |dog|
      dog.mood = "happy"
    end
    #binding.pry
  end

  def feed_cats
    cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end

    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    
    # dog_counter = 0
    # cat_counter = 0

    # dogs.each do |dog|
    #   dog_counter += 1
    # end

    # cats.each do |cat|
    #   cat_counter += 1
    # end
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
end