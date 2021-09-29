module Opposite
  def opposite
    !self
  end
end
TrueClass.include(Opposite)
FalseClass.include(Opposite)
puts true.opposite
puts false.opposite
