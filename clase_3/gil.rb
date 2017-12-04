class Golondrina
  def initialize
    @volaste = false
  end

  def volaste?
    @volaste
  end

  def vola!
    puts "volando..."
    @volaste = true
  end
end

pepita = Golondrina.new

5.times.map do
  Thread.new do
    unless pepita.volaste?
      pepita.vola!
    end
  end
end.each(&:join)