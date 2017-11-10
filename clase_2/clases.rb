class Animal

  attr_reader :peso, :energia

  def initialize peso, ciudad
    @energia = 20
    @peso = peso
    @ciudad = ciudad
  end

  def comer
    self.energia += 5
    @peso += 1
  end

  protected
  
  def adelgazar
    @peso -= 1 if @peso > 0
  end

  def cansarse energia_a_restar
    @energia = energia_a_restar < self.energia ? self.energia - energia_a_restar : 0
  end

end

class Golondrina < Animal

  attr_accessor :ciudad

  def volar_a ciudad
    if ciudad != self.ciudad
      cansarse(@ciudad.distancia_hasta(ciudad))
      adelgazar
      self.ciudad = ciudad
    end
  end

  def to_s
    <<-S
     energia: #{energia}
     peso: #{peso}
     ciudad: #{ciudad.to_s}
    S
  end

end

class Ciudad

  attr_reader :distancia

  def initialize distancia, nombre = "CABA"
    @distancia = distancia
    @nombre = nombre
  end

  def distancia_hasta otra_ciudad
    (otra_ciudad.distancia - self.distancia).abs
  end

  def to_s
    @nombre
  end

end

caba = Ciudad.new(5)
pinamar = Ciudad.new(20, "Pinamar")
pepita = Golondrina.new(8, caba)
puts "ANTES DE VOLAR"
puts pepita
pepita.volar_a pinamar
puts "DESPUES DE VOLAR"
puts pepita