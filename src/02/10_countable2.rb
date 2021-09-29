module Countable
  module ClassMethods
    def count_invocations_of(sym)
      alias_method :"#{sym}_original", sym
      define_method(sym) do
        #@cantidad_invocaciones ||= 0
        #@cantidad_invocaciones += 1
        #send(:"#{sym}_original")

        @metodos_contados ||= {}
        @metodos_contados[sym] ||= 0
        @metodos_contados[sym] += 1
        send(:"#{sym}_original")
      end
    end
  end

  def invoked?(sym)
    (!@metodos_contados.nil?) && (!@metodos_contados[sym].nil?) && (@metodos_contados[sym]>0)
  end

  def invoked(sym)
    @metodos_contados ||= {}
    @metodos_contados[sym] ||= 0
  end

  def self.included(clas)
    clas.extend(ClassMethods)
  end
end
