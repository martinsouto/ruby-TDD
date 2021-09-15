#Time.min devuelve el campo minutos
#Time.hour devuevle el campo hora
def tiempo_en_palabras(tiempo)
  
  case tiempo.min
  when 35..59
    hora = tiempo.hour+1
    if (hora==24)
      hora = 0
    end
  when 0..34
    hora = tiempo.hour
  end

  case hora
  when 1
    palabras = ["es","la"]
  else
    palabras = ["son", "las"]
  end
  
  case tiempo.min
  when 0..10
    result = "#{palabras[0].capitalize()} #{palabras[1]} #{hora} en punto"
  when 11..20
    result = "#{palabras[0].capitalize()} #{palabras[1]} #{hora} y cuarto"
  when 21..34
    result = "#{palabras[0].capitalize()} #{palabras[1]} #{hora} y media"
  when 35..44
    result = "#{palabras[0].capitalize()} #{palabras[1]} #{hora} menos veinticinco"
  when 45..55
    result = "#{palabras[0].capitalize()} #{palabras[1]} #{hora} menos cuarto"
  when 56..59
    result = "Casi #{palabras[0]} #{palabras[1]} #{hora}"
  end
  result
end

#puts tiempo_en_palabras(Time.new(2021, 10, 21, 1, 1))
#puts tiempo_en_palabras(Time.new(2021, 10, 21, 9, 33))