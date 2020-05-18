class Cat
  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  
  def initialize(name, owner, mood = "nervous")
    @name = name 
    @owner = owner
    @mood = mood
    @@all << self
  end 
  
  def owner=
    Owner.all.find do |owner_name|
      owner_name.cats

  end 
  
  def self.all 
    @@all 
  end 
end