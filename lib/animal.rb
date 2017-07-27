class Animal
  @@animals = []
  attr_accessor :location


  def save
    Animal.all << self
  end

  def self.all
    @@animals
  end

end


class Location
  attr_accessor :zoo_keepers

  def add_animal(animal)
    animals << animal
  end

  def animals
    binding.pry
    Animal.all.select {|animal| animal.location == self }

  end

end


class ZooKeeper

end
