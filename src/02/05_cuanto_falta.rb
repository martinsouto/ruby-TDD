def cuanto_falta?(fecha=Time.new(Time.now.year,Time.now.month, Time.now.day+1, 0, 0, 0))
  puts ((fecha - Time.now) / 60)
end

cuanto_falta?()