class Animal

  def comer
    raise NotYetImplemented
  end

end

class NotYetImplemented < StandardError
  def message
    "Este metodo es abstracto, deben definirlo las subclases"
  end
end

begin
  Animal.new.comer
rescue NotYetImplemented => e
  puts e.message
  puts e.backtrace  
end