  
class Cat
  
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
  
  def buy_cat(buy_cat)
    cat.owner == self
  end
end