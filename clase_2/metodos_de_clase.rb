class Golondrina

  attr_reader :energia

  def self.energia_base
    50
  end

  def initialize
    @energia = Golondrina.energia_base
  end

  def vola
    puts "VOLA"
  end

end

pepita = Golondrina.new

puts pepita.energia

def pepita.vola
  puts "CHAJA"
end

pepita.vola

Golondrina.new.vola


