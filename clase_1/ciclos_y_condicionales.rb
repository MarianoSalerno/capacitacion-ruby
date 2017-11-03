# if (el unless es exactamente igual)

if "monte hermoso".count > 3
  "si"
else
  "no"
end

if "monte hermoso".count < 3
  "si"
else
  "no"
end

#Ternario

"monte hermoso".count > 3 ? "si" : "no" #si
"monte hermoso".count < 3 ? "si" : "no" #no

#Case

case num
  when 9     then puts "es ese!"
  when 1..20 then puts "anda por ahi"
  else puts "ni idea que numero es"
end

#for

for num in [1,2,3,4] do
  puts num
end

2.times do
  puts "sarasa"
end

#while

array = [1,2,3]
i=0
while i <= array.count
  puts i
  i+=1
end

#until

until i > array.count
  puts i
  i+=1
end

