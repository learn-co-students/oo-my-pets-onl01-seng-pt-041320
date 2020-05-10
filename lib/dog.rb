class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(dog_name, owner)
    @name = dog_name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end
end