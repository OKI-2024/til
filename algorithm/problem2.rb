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

# 問3

fib = [1,1]

n = 0
while n < 100
 fib << fib[n] + fib[n+1]
 n = n + 1
end

p fib

# 回答…元々配列fib = [1]には一つの値しか入っていなかった為、fib << fib[n] + fib[n+1]の内、fib[n+1]が存在しない値(nil)となりエラーが発生。
# 解決策としては、配列fib = [1,1]に変更し、初期値として2つの数値を入れる。


