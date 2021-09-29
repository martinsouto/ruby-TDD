require "./06_documento"

class Usuario
  attr_reader :usuario, :email
  attr_accessor :rol

  def initialize(nombre, clave, email, rol)
    @usuario = nombre
    @clave = clave
    @email = email
    @rol = rol
  end

  def to_s
    "#{@email} (#{rol.to_s})"
  end

  def puede_ver?(archivo)
    rol.puede_ver?(archivo)
  end

  def puede_modificar?(archivo)
    rol.puede_modificar?(archivo,self)
  end

  def puede_borrar?(archivo)
    rol.puede_borrar?(archvo,self)
  end 

end

class Lector
  def self.to_s
    "Lector"
  end

  def self.puede_ver?(archivo)
    archivo.publico
  end

  def self.puede_modificar?(archivo,usuario)
    false
  end

  def self.puede_borrar?(archivo,usuario)
    false
  end

end

class Redactor < Lector
  def self.to_s
    "Redactor"
  end

  def self.puede_modificar?(archivo,usuario)
    archivo.creador == usuario
  end
end

class Director < Lector
  def self.to_s
    "Director"
  end

  def self.puede_ver?(archivo)
    (! archivo.borrado)
  end

  def self.puede_modificar?(archivo,usuario)
    (! archivo.borrado)
  end
end

class Administrador < Director
  def self.to_s
    "Administrador"
  end
  def self.puede_borrar?(archivo,usuario)
    true
  end
end

#pruebas
uno = Usuario.new("Uno","uno","uno@gmail",Redactor)
archivo = Ejercicio::Documento.new(uno)
puts uno.puede_ver?(archivo)
puts uno.puede_modificar?(archivo)
puts uno.to_s