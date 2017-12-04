#Ejemplo de porque el each y amigos tienen bloques implicitos y no explicitos 
#(si fuesen explicitos hay que definirlos antes, de la otra forma se parecen mucho mas a un for)

class Comando

  attr_accessor :receptor

  def initialize(receptor)
    @receptor = receptor
  end

  def cumplite_implicito
    yield receptor if block_given?
  end

  def cumplite_explicito(block)
    block.call unless block.nil? #vale if block tambien
  end

end

orden = Comando.new("sa")
ble = "ble"
puts orden.cumplite_implicito{|a| a.size > ble.size}
bloque = Proc.new{|a| a.size}
bloque = Lambda.new{|a| a.size}
comando.cumplite_explicito(bloque)
