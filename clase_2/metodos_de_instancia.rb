class Persona

  def nombre_completo_splat *nombres
    @nombre = nombres.join(" ") 
  end

  def nombre_completo nombre, segundo_nombre, apellido
    "#{nombre} #{segundo_nombre} #{apellido}"
  end

  def nombre_completo_named(nombre:, segundo_nombre:"Roque", apellido:)
    "#{nombre} #{segundo_nombre} #{apellido}"
  end

  def es_mufa? nombre_mufa="Carlos"
    @nombre.include? nombre_mufa.capitalize
  end

end

puts Persona.new.nombre_completo_splat("Mariano", "Roque", "Salerno")
puts Persona.new.nombre_completo(*["Mariano", "Roque", "Salerno"])
puts Persona.new.nombre_completo_named(nombre: "Mariano", apellido: "Salerno")
el_carlos = Persona.new.nombre_completo_splat("Carlos", "Saul")
puts "MONTE HERMOSO" if el_carlos.es_mufa?