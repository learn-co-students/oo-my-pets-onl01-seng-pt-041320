class Owner
  attr_accessor 
  
  def initialize(name)
    @name = name
  end 
  
  def name 
    @name.freeze
  end
  
end