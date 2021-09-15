def string_reverso(str)
  str.reverse
end

def string_sin_espacio(str)
  str.delete("\s\t\n\r\f")
end

def string_a_arreglo_ascii(str)
  str.bytes
end

def string_reemplaza_vocal(str)
  str.tr('aAeEiIoOuU','4433110066')
end

puts string_a_arreglo_ascii('hola')