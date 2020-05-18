class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name 
    @species = species
    @@all << self
    @cats = []
    @dogs = []
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all = []
  end 
  
  def cats 
    array = Cat.all.select {|cat| cat.owner == self} 
    @cats = array 
    @cats
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    find = Cat.all.find {|cat| cat.name == name}
    if find.nil?
      new_cat = Cat.new(name, self)
      self.cats 
    else 
      find.owner = self 
      self.cats
    end 
  end 
end