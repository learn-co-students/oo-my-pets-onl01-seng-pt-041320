class Owner
  @@all = []
  attr_reader :name, :species

  def initialize(name, species = "human")
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
    Cat.all.find_all {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.filter {|dog| dog.owner == self}
  end

  def buy_cat(name)
      Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.dogs.map do |dog|
      dog.mood="nervous"
      dog.owner=nil
  end
    self.cats.map do |cat|
        cat.mood="nervous"
        cat.owner= nil
      end
  end

  def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end


  

