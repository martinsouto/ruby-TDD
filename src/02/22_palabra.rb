require "./22_excepciones"

class Palabra
  attr_accessor :palabra

  def initialize(pal)
    case pal
    when /\w\s|\s\w/
      raise NoEsUnaPalabra, "#{pal} no es una palabra"
    when /^$|\s/
      raise EsUnStringVacio, "Es un string vacío"
    else
      @palabra = pal
    end
  end

  def vocales
    arr = []
    @palabra.scan(/[aeiou]/i) {|x| arr << x}
    arr.map{|x| x.downcase}.uniq
  end

  def consonantes
    arr = []
    @palabra.scan(/[^aeiou]/i) {|x| arr << x}
    arr.map{|x| x.downcase}.uniq
  end

  def longitud
    @palabra.length
  end

  def es_panvocalica?
    self.vocales.length == 5
  end

  def es_palindroma?
    (@palabra.downcase == @palabra.reverse.downcase) && self.longitud>=3
  end

  def gritando
    @palabra.upcase
  end
  
  def en_jaquer
    diccionario = { "a"=>"4", "e"=>"3", "i"=>"1", "o"=>"0", "u"=>"2"}
    @palabra.tr('AEIOU','aeiou').gsub(/[aeiou]/,diccionario)
  end
end

uno = Palabra.new("NEuquen")
puts "(#{uno.palabra})"
print uno.vocales, "\n"
print uno.consonantes, "\n"
puts uno.longitud
puts uno.es_panvocalica?
puts uno.es_palindroma?
puts uno.gritando
puts uno.en_jaquer