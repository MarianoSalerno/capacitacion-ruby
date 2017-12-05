# https://www.sitepoint.com/rubys-important-hook-methods/

#
# HOOKS
#

TracePoint.trace(:call) { |tp| puts [tp.lineno, tp.event] }

module Animal
  def self.included(base)
    #Se incluyo este modulo, como vimos en la clase de modulos
  end

  def self.extended(base)
    #Se extendio este modulo, lo cual hace que todos los metodos sean singleton methods
    #del objeto que lo extendio (en una clase se convierten en metodos de clase por ej)
  end

  def self.prepended(base)
    #Pisa todas las implementaciones de los metodos del objeto que coincidan con los del modulo
  end
end

class Golondrina
  def self.inherited(child_class)
    #Se creo una clase que hereda de esta
  end
end

#
# Reflection
#

pepita = Golondrina.new
# pepita.define_singleton_method(:vola){puts "CHAJA"}
# puts pepita.singleton_class
# puts pepita.respond_to?(:vola)
# pepita.vola

# pepita.instance_variable_set(:@energia, 20)
# puts pepita.instance_variable_get(:@energia)
# puts pepita.instance_variables
# pepita.remove_instance_variable(:@energia)
# puts pepita.instance_variable_get(:@energia)

# puts pepita.instance_of? Golondrina
# puts pepita.is_a? Object

# puts pepita.method(:to_s)
# puts pepita.methods #pasarle false para que no devuelva los heredados

# pepita.instance_eval{|p| p.vola}
# Golondrina.class_eval{|g| puts g}