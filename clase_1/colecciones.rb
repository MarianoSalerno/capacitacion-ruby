# Array

Array.new(3) #[nil, nil, nil]
Array.new(3, 2) #[2, 2, 2]
array_de_numeros = [1,2,3,4,5]
[1, "ble", 3.7, [1,2]] #Duck typing!
array_de_strings = ["un", "array", "de", "strings"]
array_de_strings[-1] #"strings"
array_de_strings[1..3] #["array", "de", "strings"]

array_de_numeros.include? 10
array_de_strings.each {|string| puts string}
array_de_strings.map {|string| string.size} == array_de_strings.map(&:size)
array_de_numeros.select {|numero| numero > 3}
array_de_numeros.reject {|numero| numero > 3}
array_de_numeros.inject(0) do |acum, numero|
  acum + numero
end
array_de_strings.any?{|string| string.include?("s")}
array_de_strings.all?{|string| string.size > 3}


# Hash

hash_vacio = Hash.new
hash_vacio["algo"] #nil
hash_vacio_con_default = Hash.new("no lo encontre") #Paso valor por default para cuando no se encuentra una key
hash_vacio_con_default["algo"] #"no lo encontre"
{key: "value"}
{1 => [1]} #las key y los values pueden ser de cualquier tipo
hash_persona = {  
  nombre: "cosme",
  apellido: "fulanito",
  edad: 35,
  hijos: {}  
}

hash_persona.keys
hash_persona.values
hash_persona.include? :nombre
hash_persona.each {|key, value| puts "#{key}: #{value}"}
hash_persona.map {|key, value| [key, value]}
hash_persona.select {|key, value| key.size > 5}
hash_persona.reject {|key, value| key.size > 5}
hash_persona.any?{|key, value| value == "cosme"}
hash_persona.all?{|key, value| value == "cosme"}

# Range

[1..5].to_a #[1,2,3,4,5]
['c'..'a'].to_a #['c', 'b', 'a']
#No vale para decimales

# Set

Set.new([1,2,2,3,4,3]) #<Set: {1, 2,3,4}>
['a', 'b', 'c', 'c', 'c'].to_set #<Set: {'a', 'b','c'}>