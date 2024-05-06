# https://paiza.jp/career/challenges/710/retry

jankens = gets.to_i

count = 0

jankens.times do
  
  a = gets.chomp
  
  b = gets.chomp

  if a == "G" && b == "C"
    count += 1
  elsif a == "C" && b == "P"
    count += 1
  elsif a == "P" && b == "G"
   count += 1
  end

end

puts count

# https://paiza.jp/challenges/560/show


n, m = gets.split.map(&:to_i)
# 1行で複数の入力を受け取る
# ①"10 20"と入力
# ②splitによって空白を区切りとして、["10", "20"]という配列に
# ③配列の各要素に対して&:to_iを実行し、数値に変換→[10, 20]


sum = 0

( n -1 ).times do
  
  a = gets.to_i
  if a <= m
    sum += a
  end
  
end

puts sum

# https://paiza.jp/challenges/488/show

n, d = gets.split.map(&:to_i)

yoko = n * d

(n -1).times do
  kasanari = gets.to_i
   yoko -= kasanari
end

puts yoko * d



# https://paiza.jp/challenges/571/show


shops, month = gets.split.map(&:to_i)

construction, personal, profit = gets.split.map(&:to_i)

count = 0
cost = construction + (personal * month)

shops.times do
  
  n = gets.to_i * profit
  if (n - cost ) < 0
    count += 1
  end
end

puts count


