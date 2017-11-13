class Animal
  @peso_default = 5
  class << self
    attr_accessor :peso_default
  end
end

class Golondrina < Animal
  @peso_default = 10
  class << self
    attr_accessor :peso_default
  end
end

class Colibri < Animal
  @peso_default = 1
  class << self
    attr_accessor :peso_default
  end
end

puts Animal.peso_default
puts Golondrina.peso_default
puts Colibri.peso_default