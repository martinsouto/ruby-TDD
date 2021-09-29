def da_nil?(&bloque)
  bloque.call.nil?
end

puts da_nil? { }
puts da_nil? { "algo distinto de nil"}