class Dog
  # code goes here
  attr_reader :name
  attr_accessor :owner, :mood
  @@dogs = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogs << self
    @owner.dogs << self
  end

  def self.all
    @@dogs
  end
end
