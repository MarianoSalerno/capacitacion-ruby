# Array

Array.new(3) #[nil, nil, nil]
Array.new(3, 2) #[2, 2, 2]
[1,2,3,4,5]
[1, "ble", 3.7, [1,2]] #Duck typing!
["un", "array", "de", "strings"][-1] #"strings"
["un", "array", "de", "strings"][1..3] #["array", "de", "strings"]

# Hash

hash = Hash.new
hash["algo"] #nil
hash = Hash.new("no lo encontre") #Paso valor por default para cuando no se encuentra una key
hash["algo"] #"no lo encontre"
{key: "value"}
{1 => [1]} #las key y los values pueden ser de cualquier tipo
#Y como los arrays tambien se pueden anidar
{
  persona1: {
    nombre: "cosme",
    apellido: "fulanito",
    edad: 35,
    hijos: {}
  }
}

# Range

[1..5].to_a #[1,2,3,4,5]
['c'..'a'] #['c', 'b', 'a']
#No vale para decimales

# Set

Set.new([1,2,2,3,4,3]) #<Set: {1, 2,3,4}>
['a', 'b', 'c', 'c', 'c'].to_set #<Set: {'a', 'b','c'}>