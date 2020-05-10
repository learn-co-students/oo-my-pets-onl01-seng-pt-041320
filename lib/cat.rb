require 'pry'
class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(cat_name, owner)
    @name = cat_name
    @owner = owner
    @mood = "nervous"
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
    #binding.pry
  end
end