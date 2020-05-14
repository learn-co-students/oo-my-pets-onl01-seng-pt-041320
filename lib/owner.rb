require 'pry'

class Owner

@@owners = []

attr_accessor #:pets
attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
    # @pets = {:dogs => [], :cats => []}
    # @cats = []
    # @dogs = []
     end

  def say_species
    if @species == "human"
       return "I am a human."
    else
       nil
    end
    # binding.pry
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
      self.all.clear
    end

    def cats
      Cat.all.select {|cat| cat.owner == self}
    end

    def dogs
      Dog.all.select {|dog| dog.owner == self}
      # binding.pry
    end

    def buy_cat(name)
      Cat.new(name, self)
    end

    def buy_dog(name)
      Dog.new(name, self)
    end

    def walk_dogs
      self.dogs.map {|dog| dog.mood = "happy"}
      # binding.pry
    end

    def feed_cats 
      self.cats.map {|cat| cat.mood = "happy"}
      # binding.pry 
    end

    def sell_pets
      self.dogs.map {|dog| dog.mood = "nervous"}
      self.cats.map {|cat| cat.mood = "nervous"}
      self.dogs.map {|dog| dog.owner = nil}
      self.cats.map {|cat| cat.owner = nil}
      # binding.pry
      
    end

    def list_pets 
      "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    end
end



