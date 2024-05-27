# https://paiza.jp/challenges/600/show

puts "豆まきの参加人数を入力してください"
members = gets.to_i
ages = []


members.times do |i|
  puts "#{i + 1}番目の方の年齢を入力してください"
   ages << gets.to_i
end

puts "命令の数を入力してください"
oreders = gets.to_i

orders_detail = []

oreders.times do |i|
  puts "#{i + 1}つめの命令を数字3つで入力してください※●番目から●番目までの参加者に●個の豆を配る"
  orders_detail << gets.split.map(&:to_i)
end
beans_received = Array.new(members, 0) #members個（例えば5個）の配列を用意し、初期値を0としている→第一引数が要素数で、第二引数が初期値

orders_detail.each do |order|
  first = order[0] - 1  
  last = order[1] - 1
  beans = order[2]
  
  (first..last).each do |i|
    if beans_received[i] + beans <= ages[i]
      beans_received[i] += beans
    else
      beans_received[i] = ages[i]
    end
  end
end

puts beans_received



