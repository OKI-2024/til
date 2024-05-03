# 1

num = 1041440400
divisors = []

(1..Math.sqrt(num)).each do |i|
  if num % i == 0
    divisors << i
    divisors << num / i unless i == num / i
  end
end

count = 0

divisors.each do |n|
  if n >= 10000 && n <= 99999
    count += 1
  end
end

puts count

# 2

array = (1..600)
n = 77777
sum = 0
array.each do |i|
  quotient = n / i
  remainder = n % i
  sum += (quotient + remainder)
end

puts sum

# 3