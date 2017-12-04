class Animal
  @@peso_default = 5

  def self.peso_default
    @@peso_default
  end
end

class Golondrina < Animal
  @@peso_default = 10
end

class Colibri < Animal
  @@peso_default = 1
end


puts Animal.peso_default
puts Golondrina.peso_default
puts Colibri.peso_default