class GenericFactory
  def self.create(**args)
    new(**args)
  end
  def initialize(**args)
    raise NotImplementedError
  end
end

class Factory1 < GenericFactory
  def initialize(**args)
    args.each do |clave, valor|
      instance_variable_set("@#{clave}",valor)
    end
  end

  def hola
    puts @hola
  end
end

uno = Factory1.create( {hola: "Hola", chau: "chau"})
uno.hola

class Factory2 < GenericFactory
  attr_accessor :diccionario
  def initialize(**args)
    @diccionario = args
  end
end

dos = Factory2.create({hola: "Hola", chau: "chau"})
puts dos.diccionario