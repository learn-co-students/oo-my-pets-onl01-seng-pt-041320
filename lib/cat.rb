class Cat
  attr_reader :name 
  attr_accessor :mood, :owner
@@all = []
  def initialize(name, owner_name)
    @name = name
    @owner = owner_name
    @mood = "nervous"
    @@all << self 
  end 

  def self.all
    @@all
  end 

end
