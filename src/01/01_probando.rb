#vamos a crear objetos de tipo simbolo, string, arreglo y hash
un_simbolo = :simbol
un_string = "soy un string"
arreglo = [1,2,"hola"]
hash = { uno: 1, dos: 2}
puts(un_simbolo)
puts(un_string)
puts(arreglo)
arreglo.each { | each | print(each)}
print("\n")