module Animal

  attr_accessor :energia

  def initialize
    @energia = 20
  end

  def gastar_energia
    self.energia -= 10
  end

  def ir_a_ciudad
    gastar_energia
  end

  def to_s
     "energia: #{energia}"
  end
end

class Golondrina
  include Animal

  def ir_a_ciudad
    super
    volar
  end

  def volar
    puts "CHAJA"
  end

end

pepita = Golondrina.new
puts pepita.to_s
pepita.ir_a_ciudad
puts pepita.to_s
