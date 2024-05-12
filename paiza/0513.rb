# https://paiza.jp/challenges/85/show
puts "当選番号を入力してください"
win_num = gets.split.map(&:to_i)







# https://paiza.jp/challenges/547/show

puts '旅程期間を入力してください'
N = gets.to_i

array = []

N.times do |i|
  puts "#{i + 1}日目の出発地の現地時間、飛行時間、到着地の現地時間を入力してください"
    s, f, t = gets.split.map(&:to_i)
    total = s + f + (24 - t)
    array << total
end

puts array.min
puts array.max