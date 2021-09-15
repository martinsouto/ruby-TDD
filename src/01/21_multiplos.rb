def multiplos_de_3_y_5(tope)
  a = (1..tope).to_a.select{|x| x%3==0 && x%5==0}.inject(0){|sum, element| sum+element}
  a = (1..tope).to_a.select{|x| x%3==0 && x%5==0}.inject(0){|sum, element| sum+element}
end
#numeros.select {|y| x%y==0} esto iria en vez de lo que esta en el select ahora(pero adentro)
puts multiplos_de_3_y_5(30)