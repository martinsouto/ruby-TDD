require "prime"
en = Enumerator.new do |caller|
  i=-1
  arr=[]
  loop do
    i++
    arr << i if (Prime.prime(i))
    caller.yield(value) if 
    break if i>30
  end
end

