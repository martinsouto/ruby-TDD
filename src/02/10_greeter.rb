require "./10_countable2"
class Greeter
  include Countable # Incluyo el Mixin
  def hi
    puts 'Hey!'
  end
  def bye
    puts 'See you!'
  end
  # Indico que quiero llevar la cuenta de veces que se invoca el método #hi
  count_invocations_of :hi
  count_invocations_of :bye
end

a = Greeter.new
b = Greeter.new
puts a.invoked? :hi
# => false
puts b.invoked? :hi
# => false
a.hi
# Imprime "Hey!"
puts a.invoked :hi
# => 1
puts b.invoked :hi
# => 0
puts a.invoked? :hi
puts b.invoked? :hi
a.bye
puts a.invoked :bye
puts a.invoked :hi