def rot13(str)
  str.tr("a-zA-Z","n-za-mN-ZA-M")
end

#puts rot13("¡Bienvenidos a la cursada de TTPS Opción Ruby!")