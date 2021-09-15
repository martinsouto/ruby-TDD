def contar(string1,string2)
  case string2
  when ""
    0
  else
    #string1.downcase.scan(/#{string2.downcase}/).count
    string1.scan(/#{string2}/i).count
  end
end

#puts contar('hola como va la plaza','')