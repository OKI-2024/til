# 1

num = 1041440400
divisors = [] # 約数の空配列を用意

(1..Math.sqrt(num)).each do |i| # Math.sqrt(num)は平方根を返すもの
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

array = []

(1359..99999999).each do |n|
  if n % 1359 == 0 # 1359の約数かどうか✔
    array << n
  end
end

thousands = 0

array.each do |i|

thousands += i.to_s[-4].to_i # 千の位を抜き出し、足し算

end

puts thousands

# 4

require 'bigdecimal/math'

sum = 0
n = 1

# ここにループを追加し、1からNまでの整数の平方根の整数部分の和を計算する

while sum <= 1000000 do
  # 平方根の整数部分を求める
  square_root = Math.sqrt(n).to_i
  # 和に加算する
  sum += square_root
  # Nを増やす
  n += 1
end

puts n - 1  

# 5
# 正解か分からない

count = 0

(1..1000000).each do |num|
  current_num = num
  6.times do
    digits = current_num.digits
    product = digits.reduce(:*)
    break if product == 0
    current_num = product
  end
  count += 1 if current_num == 0
end

puts "答えが0になるまでの繰り返しの掛算が丁度6回になる数値の数: #{count}"


    