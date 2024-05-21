
num = 0

(1..1000000).each do |i|
  if i % 5 != 0 && i % 2 == 0
    num += i
  end
end

  

puts num