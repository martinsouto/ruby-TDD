def rot(string, cant)
  def devolver_letra(letra,cant)
    abc = ("a".."z").to_a
    pos = abc.rotate(-cant).find_index(letra.downcase)
    case letra
    when /[a-z]/
      abc[pos]
    when /[A-Z]/
      abc[pos].upcase
    end
  end
  string.gsub(/[a-zA-Z]/) {|each| devolver_letra(each,cant)}
end

puts rot('Hola',13)