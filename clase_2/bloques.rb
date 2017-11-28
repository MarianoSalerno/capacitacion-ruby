#Ejemplo de porque el each y amigos tienen bloques implicitos y no explicitos 
#(si fuesen explicitos hay que definirlos antes, de la otra forma se parecen mucho mas a un for)

class Golondrina

end

class Orden

  attr_accessor :receptor

  def initialize(receptor)
    @receptor = receptor
  end

  def cumplite_implicito
    yield receptor if block_given?
  end

  def cumplite_explicito(&block)
    block.call unless block.nil? #vale if block tambien
  end

end

orden = Orden.new("sarasa")
puts orden.cumplite_explicito{|a| "sarasa1231231".size}