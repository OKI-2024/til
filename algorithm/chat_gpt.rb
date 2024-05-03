# 1から100までの数を出力するプログラムを書いてください。ただし、3で割り切れる場合は"Fizz"、5で割り切れる場合は"Buzz"、両方で割り切れる場合は"FizzBuzz"を出力してください。
(1..100).each do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end

# ユーザーに入力された数が素数かどうかを判定するプログラムを書いてください。
# 素数...1とその数自身以外の約数を持たない数
n = gets.to_i

count = 1

(2..n-1).each do |i|
if n % i == 0
  count += 1
end
end

if count > 1
  puts "#{n}は素数ではありません"
else
  puts "#{n}は素数です"
end

# ユーザーに2つの数を入力してもらい、それらの最大公約数を計算するプログラムを書いてください。
# 最大公約数...2つ以上の整数について、 「どちらも割り切れる最大の整数」 を指す


def gcd(a, b)
  while b != 0
    remainder = a % b
    a = b
    b = remainder
  end
  return a
end

puts gcd(48, 18)

num1 = gets.to_i
num2 = gets.to_i

puts gcd(num1, num2)


# ユーザーに入力された数の階乗を計算するプログラムを書いてください。