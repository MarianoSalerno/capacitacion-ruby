class Animal

  def comer
    raise AbstractMethodException
  end

end

class AbstractMethodException < StandardError
  def message
    "Este metodo es abstracto, deben definirlo las subclases"
  end
end

begin
  Animal.new.comer
rescue AbstractMethodException => e
  puts e.message
  puts e.backtrace  
end