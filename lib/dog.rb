# class Dog
#   attr_accessor :owner, :mood
#   attr_reader :name
#   @@all = []

#   def initialize (name, owner)
#     @name = name
#     self.owner = owner
#     @mood = "nervous"
#     save
#   end
#   def self.all
#     @@all
#   end
#   def save
#     self.class.all << self
#   end

# end





class Dog

  @@all = []

  attr_reader :name
  attr_accessor :owner, :mood

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end