def proceso(*args, &bloque)
  begin
    bloque.call(*args)
    #raise
  rescue RuntimeError
    puts "Hay algo mal que no anda bien"
    :rt
  rescue NoMethodError => info
    puts "Y este metodo? #{info}"
    :nm
  rescue
    puts "Y ahora?"
    raise
  else
    puts "Todo ok"
    :ok
  end
end

puts proceso(1,2,3) {|uno,dos,tres| uno+dos+tres}