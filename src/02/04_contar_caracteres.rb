def contar_caracteres(*args)
  args.each {|e| print e.to_s, "-->", e.to_s.length, "\n"}
end

contar_caracteres(9, Time.now, "Hola", {un: "Hash"}, :ruby)