def procesar_hash(hash,proc)
  hash.each_with_object({}) do | (k, v), h|
    h[v]=proc.call(k)
  end
end

hash = { 'clave' => 1, :otra_clave => 'valor' }
puts procesar_hash(hash, ->(x) { x.to_s.upcase })
