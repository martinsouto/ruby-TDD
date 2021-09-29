class Array
  def randomly(&block)
    begin
    #self.shuffle.each(&block) esta version pareceria la mejor pero no da error sin bloque
    self.shuffle.each {|e| block.call(e)}
    rescue
  
      Enumerator.new do |caller|
        self.shuffle.each do |value|
          caller.yield(value)
        end
      end

    end
  end
end

arreglo = [1,2,3,4,5]

arreglo.randomly {|e| puts e} 
puts 
en = arreglo.randomly
puts en
5.times { puts en.next}
