class Cat # initialized Cat class
  attr_accessor :mood, :owner # Setter and getter defined for mood and cat owner.
  attr_reader :name # getter method defined for name of cat.

  @@all = []  # Empty array to store  all the new cat created.
  
  def initialize(name, owner) # Initialized with a name an Owner.
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all # Knows all the cats.
    @@all
  end
end