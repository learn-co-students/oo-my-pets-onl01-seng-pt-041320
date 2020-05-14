require 'pry'

class Owner

@@owners = []

attr_accessor 
attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end

  def say_species
    if @species == "human"
       return "I am a human."
    else
       nil
    end
    # binding.pry
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def self.reset_all
      self.all.clear
    end

    def cats
      Cats.all
    end
end


