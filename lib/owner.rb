class Owner 
  attr_reader :name, :species
  attr_accessor 
  @@all = []
  
  def initialize (name)
    @name = name
    @species = "human"
    @@all << self
   end
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a #{self.species}."
   end
  
  def self.reset_all
    all.clear
  end
  
  def self.count
    self.all.length
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name) << Cat.all.select
  end
end