require 'pry'

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
    @cats << Cat.new(name,self)
  end
  
  def buy_dog(name)
    @dogs << Dog.new(name,self)
  end 
  
  def walk_dogs
    self.dogs.each {|d| d.mood = "happy"}
  end 
  
  def feed_cats
    
  end 
  
  def sell_pets
    self.dogs.each {|d| d.mood = "nervous"}
    self.dogs.each {|d| d.mood = "nervous"}
end
