class Persona

  def nombre_completo_splat *nombres
    @nombre = nombres.join(" ") 
  end

  def nombre_completo nombre, segundo_nombre, apellido
    "#{nombre} #{segundo_nombre} #{apellido}"
  end

  def es_mufa? nombre_mufa
    @nombre.include? nombre_mufa
  end

end

puts Persona.new.nombre_completo_splat("Mariano", "Roque", "Salerno")
puts Persona.new.nombre_completo(*["Mariano", "Roque", "Salerno"])