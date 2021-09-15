[:upcase, :downcase, :capitalize, :swapcase].map do |meth|
    puts "TTPS Ruby".send(meth)
    end
#Este codigo imprime el string dado aplicandole los metodos upcase, downcase, capitalize y swapcase
#Punto 11:
#La diferencia entre send y public_send es que el segundo solo permite llamar a metodos publicos
