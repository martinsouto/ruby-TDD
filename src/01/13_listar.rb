def listar(hash)
  str = ""
  hash.each_with_index do |key_value, index|
    str << "#{index+1}. #{key_value[0]}: #{key_value[1]}\n"
  end
  str.chomp
end

puts listar({ perros: 2, gatos: 2, peces: 0, aves: 0 })