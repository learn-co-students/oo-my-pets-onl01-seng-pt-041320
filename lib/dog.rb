class Dog
  attr_accessor :mood, :owner # Setter and getter defined.
  attr_reader :name

  @@all =[] # Created an empty array.

  def initialize(name, owner) # Initialized name and owner / allow to change name and owner.
    @name = name 
    @mood = "nervous" # Initialized with a nervous mood.
    @owner = owner
    @@all << self
  end

  def self.all  # Knows about all the dogs.
    @@all
  end
end