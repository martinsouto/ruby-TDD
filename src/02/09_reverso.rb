module Reverse
  def di_tcejbo
    puts self.object_id.to_s.reverse
  end

  def ssalc
    puts self.class.to_s.reverse
  end
end

class Integer
  include Reverse
end

num = 12345
puts num.object_id
num.di_tcejbo
puts num.class
num.ssalc
