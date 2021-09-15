def multiplos_de_3_y_5(numeros, tope)
  a = (1..tope).to_a.select{|x| numeros.all?{|y| x%y==0} }.inject(0){|sum, element| sum+element}
end

puts multiplos_de_3_y_5([3, 5, 17, 28, 65], 100_000)