require 'pry'

class Cat

  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all.push(self)
  end
  
  def self.owner=(owner)
    @owner = owner
    owner.cats << self
  end
  
  def self.all
    @@all
  end
  
end