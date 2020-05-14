class Owner
  attr_reader :name, :species # Getter method defined.

  @@all = []  # Created an empty array.

  def initialize(name) # name Instance initialized as well as the species instance with a default value of "human".
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}." # Interpolated the Owner species to a string.
  end
  
  def self.all # Class method to return all the instance of the owners that has been created.
    @@all
  end

  def self.count # counted and returned all the owners that hs been created.
    self.all.count
  end

  def self.reset_all  # Reset all the owners that have been created.
    self.all.clear
  end

  def cats  # Initialized with a name and  owner.
    Cat.all.select{|cat| cat.owner == self}
  end

  def dogs  # Initialized with a name and owner.
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name) # Can buy a cat that is an instance of the Cat class this class should knows about its cats. 
    Cat.new(name, self)
  end

  def buy_dog(name) # Can buy a dog that is an instance of the Dog class and know about its dogs.
    Dog.new(name, self)
  end

  def walk_dogs # Walking the dog makes the dogs' moods happy.
    self.dogs.each{|dog| dog.mood = "happy" }
  end

  def feed_cats # Feeding the cat makes the cats' mood happy.
    self.cats.each{|cat| cat.mood = "happy" }
  end

  def sell_pets # Can sell all its pets, which make them nervous and leave them without an owner.
    pets = self.dogs + self.cats 

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil 
    end
  end 

  def list_pets  # Can list off its pets.
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end