class Owner
  attr_accessor :dog, :cat 
  attr_reader :name, :species
  @@all = []
  def initialize(name)
      @name = name  
      @species = "human"
      @@all << self 
  end 
  def say_species
      "I am a #{@species}."
  end 
  def self.all 
      @@all 
  end 
  def self.count
      @@all.length 
  end 
  def self.reset_all
      self.all.clear
  end 
  def cats 
      Cat.all.select{|cats| cats.owner == self}
  end 
  def dogs 
      Dog.all.select{|cats| cats.owner == self}
  end 
  def buy_cat(new_cat)
      new_cat = Cat.new(new_cat, self)
  end 
  def buy_dog(new_dog)
      new_dog = Dog.new(new_dog, self)
  end  
  def walk_dogs
      dogs.each{|dog| dog.mood = "happy"}
  end 
  def feed_cats
      cats.each{|cat| cat.mood = "happy"}
  end 
  def sell_pets
      pets = dogs + cats 
      pets.each{|pet| pet.mood = "nervous"}
      pets.each{|pet| pet.owner = nil}
  end 
  def list_pets
      "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end 
end