def listar_mejorada(hash, pegamento=": ")
    str = ""
    hash.each_with_index do |key_value, index|
      str << "#{index+1}. #{key_value[0]}#{pegamento}#{key_value[1]}\n"
    end
    str.chomp
  end
  
  puts listar_mejorada({ perros: 2, gatos: 2, peces: 0, aves: 0 }, "-> ")