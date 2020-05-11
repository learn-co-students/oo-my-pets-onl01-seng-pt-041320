require 'pry'
class Owner
  # code goes here
  attr_reader :name, :species

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
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
    Cat.all
  end

  def dogs
    Dog.all
  end

  def buy_cat(cat)
    #binding.pry
    @@pets[:cats] << Cat.new(cat, self.name)
  end

  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog, self.name)
  end

end