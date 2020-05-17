class Cat
  attr_accessor :owner, :mood
  attr_reader :name
    @@all = []

  def initialize (name, owner)
   @name = name
   self.owner = owner
   @mood = "nervous"
   self.owner = owner
   @@all << self
  end

  def self.all
    @@all
  end


end