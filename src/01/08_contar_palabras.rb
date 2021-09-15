def contar_palabras(string1,string2)
    case string2
    when ""
      0
    else
      string1.scan(/\b#{string2}\b/i).count
    end
  end
  
#puts contar_palabras('hola como va la plaza','la')