class Owner
  attr_accessor 
  attr_reader :name, :species #spec is asking for a reader (can't change owner's name)
  @@all = []

  def initialize (name, species="human") # Initializing object with name and species, defaulting to human if not specified
    @name = name
    @species = species
    @@all << self
  end 

  def say_species # puts out a species instance variable.
    "I am a #{@species}."
  end

  def self.all # reader method for class variable @@all
    @@all
  end

  def self.count # number of elements in @@all array.
    self.all.count
  end

  def self.reset_all # resetting / clearing @@all array. 
    self.all.clear
  end

  def cats # selecting all cats whose owner is this insance of "Owner"
    Cat.all.select{|name| name.owner == self}
  end

  def dogs # selecting all dogs whose owner is this instance of "Owner"
    Dog.all.select{|name| name.owner == self}
  end

  def buy_cat(name)  # buying a cat consists of creating a new instance of "Cat" class and setting a name and owner as this instance of Owner class. 
    Cat.new(name, self)
  end

  def buy_dog(name) # buying a dog consists of creating a new instance of "Dog" class and setting a name; and owner as this instance of Owner class.
    Dog.new(name, self)
  end

  def walk_dogs # use previously defined "dogs" method to select all dogs that belong to this owner and set their mood to "happy" by iterating through the object and changing each one.
    self.dogs.each {|dog| dog.mood="happy"}
  end
  def feed_cats # same as previous method. Iterate thorugh the "cats" that belong to this owner (cats method) and set their mood to "happy."
    self.cats.each {|cat| cat.mood="happy"}
  end
  def sell_pets # sell all dogs and all cats that belong to this instance of "Owner." To sell them set their mood to "nervous" and owner to nil. 
    self.dogs.each do |dog| 
      dog.mood="nervous"
      dog.owner=nil
    end
    self.cats.each do |cat| 
      cat.mood="nervous"
      cat.owner=nil
    end
  end

  def list_pets #need to list number of all pets both dogs and cats
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end  
  