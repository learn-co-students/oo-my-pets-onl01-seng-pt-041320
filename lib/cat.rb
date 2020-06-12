# class Cat
#     attr_accessor :owner, :mood
#     attr_reader :name
#     @@all = []
#     def initialize (name, owner)
#       @name = name
#       @mood = "nervous"
#       self.owner = owner
#       save
#     end
#     def save
#       self.class.all << self
#     end
#     def self.all
#       @@all
#     end
# en




class Cat

  @@all = []

  attr_accessor :mood, :owner
  attr_reader :name
 
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  # def species
  #   human = species.new(human)
  # end

end