class Dog
  
  @@all = []

  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    
  end
  
  def self.all
    @@all
  end
  
  def buy_dog(buy_dog)
    dog.owner == self
  end
end