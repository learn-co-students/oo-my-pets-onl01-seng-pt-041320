class Owner
  
  attr_reader :name, :species
  @@all = []
  
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    puts self
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    owner = self.new(name)
    owner.save
  end 
  
  def self.all
    @@all
  end

  def self.count
    all.length
  end
  
  def self.reset_all
     all.clear
  end
  
  def say_species
     puts "I am a #{species}."
     "I am a #{species}."
  end
  
  def cats
     Cat.all.select{|cat| cat.owner == self}
  end

  def dogs
     Dog.all.select{|dog| dog.owner == self}
  end
 
  def buy_cat(name)
     Cat.new(name, self)
  end
 
  def buy_dog(name)
    Dog.new(name, self)
  end
 
  def walk_dogs
    dogs.each {|dog| dog.mood = "happy" }
  end
  
  def feed_cats
    cats.each {|cat| cat.mood = "happy" }
  end
  
  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
  end
end
  
  def list_pets
    dogs = self.dogs.count
    cats = self.cats.count
    "I have #{dogs} dog(s), and #{cats} cat(s)."
  end
  
    
end