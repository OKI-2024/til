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

puts "素数かどうか確認したい数字を入力してください"
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


puts "1つめの数字を入力してください"
num1 = gets.to_i
puts "2つめの数字を入力してください"
num2 = gets.to_i

puts gcd(num1, num2)


# ユーザーに入力された数の階乗を計算するプログラムを書いてください。

def factorial(num)
  result = 1
  current_num = num

  while current_num > 1 do
    result *= current_num
    current_num -= 1
  end

  return result
end

puts "階乗を計算したい数字を入力してください"
num = gets.to_i
puts factorial(num)

# もしくは
puts "正の整数を入力してください"
input = gets.to_i


if input <= 0
    puts "正の整数を入力してください"
else
   factorial = 1
   (1..input).each do |i|
   factorial *= i
  end


puts "#{input}の階乗は#{factorial}です"    

end


# フィナボッチ数列

puts "正の整数を入力してください："
n = gets.to_i

if n <= 0
  puts "正の整数を入力してください。"
else
  fib = [1, 1]  # 最初の2つの数字は既知のため、配列に最初から格納しておく
  (2...n).each do |i|
    fib[i] = fib[i - 1] + fib[i - 2]  # 直前の2つの数字の和を次の数字として追加する
  end

  puts "フィボナッチ数列は #{fib.join(', ')} です。"
end

# アナグラム

puts "1つ目の文字列を入力してください："
s1 = gets.chomp.downcase

puts "2つ目の文字列を入力してください："
s2 = gets.chomp.downcase

# 文字列内の各文字の出現回数をカウントするためのハッシュを初期化
count_s1 = Hash.new(0)
count_s2 = Hash.new(0)

# 1つ目の文字列内の各文字の出現回数をカウント
s1.each_char do |char|
  count_s1[char] += 1
end

# 2つ目の文字列内の各文字の出現回数をカウント
s2.each_char do |char|
  count_s2[char] += 1
end

# 1つ目と2つ目の文字列がアナグラムであるかを判定
if count_s1 == count_s2
  puts "入力された2つの文字列はアナグラムです。"
else
  puts "入力された2つの文字列はアナグラムではありません。"
end
