# 問1

n = 1
10.times do
 puts n
 n += 1
end

# もしくは

array = (1..10)

array.each do |i|
  puts i
end

# もしくは

n = 1

while n <= 10 do
 puts n
 n += 1
end

# 問2

array = (1..1000)
nums = 0
array.each do |i|
  nums += i
end
puts nums

# もしくは

n = 1
sum = 0
while n <= 1000 do
  sum += n
  n += 1
end
puts sum




