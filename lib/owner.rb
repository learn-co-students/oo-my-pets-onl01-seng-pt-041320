class Owner

  attr_accessor
  attr_reader :name, :species 

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name 
    @species = "human" 
    @@all << self 
  end
 
  def say_species
    "I am a #{@species}."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cat| cat.owner if cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner if dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end 

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.select {|dog| dog.mood = "happy" if dog.owner = self}
  end

  def feed_cats
    Cat.all.select {|cat| cat.mood = "happy" if cat.owner = self}
  end

  def sell_pets
    self.dogs.each {|dog| dog.mood = "nervous" 
    dog.owner = nil}
    self.cats.each {|cat| cat.mood = "nervous" 
    cat.owner = nil}
    self.dogs.clear
    self.cats.clear
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
