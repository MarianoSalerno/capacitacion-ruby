#Strings

'un string copado'

"otro string, menos copado"

'la interpolacion no sirve con single quotes  #{interpolame}'

"pero sin con dobles:  #{12 + 28}"

"si interpolo strings pueden ser #{'quotes distintos'}"

"o sino puedo #{"usar los mismos"}"

"salvo que no \"interpole\""

"abc".size #3
"sarasa".gsub("a", "j")  #sjrjsj
"sarasa".gsub!("a", "j")  #sjrjsj
"sarasa".include?("ras") #true

"Rey de copas"[0] #"R"
"Rey de copas"[-1] #"s"
"Rey de copas"[0..2] #"Rey"
"Rey de copas"[0..-1] #"Rey de copas"

#Symbol

:unSymbol

:sarasa == "sarasa" #?

#Expresiones regulares
"Pepita es una golondrina que come y vuela" =~ /es/    #7
"Pepita es una golondrina que come y vuela" =~ /un./   #10
"Pepita es una golondrina que come y vuela" =~ /g.a/   #nil  
"Pepita es una golondrina que come y vuela" =~ /g.*a/  #14


#Heredoc

<<-HEREDOC
  este es un texto largo
  que ocupa varias lineas 
  y no se puede hacer con los quotes 
HEREDOC

<<~JS
  lo que sigue despues del operador puede ser cualquier cosa
  y esa palabra delimita el fin del string, la diferencia con
  el operador anterior es que este omite los espacios al empezar cada linea
JS