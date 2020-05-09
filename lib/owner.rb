require 'pry'

class Owner
  attr_accessor 
  attr_reader :name, :species #spec is asking for a reader (can't change owner's name)
  @@all = []

  def initialize (name, species="human")
    @name = name
    @species = species
    @@all << self
  end 

  def say_species
    "I am a #{@species}."
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

  def cats
    Cat.all.select{|name| name.owner == self}
  end

  def dogs
    Dog.all.select{|name| name.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood="happy"}
  end
  def feed_cats
    self.cats.each {|cat| cat.mood="happy"}
  end
  def sell_pets
    self.dogs.each do |dog| 
      dog.mood="nervous"
      dog.owner=nil
    end
    self.cats.each do |cat| 
      cat.mood="nervous"
      cat.owner=nil
    end
  end

  def list_pets #need to list all pets both dogs and cats
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end