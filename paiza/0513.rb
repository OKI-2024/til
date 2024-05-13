# https://paiza.jp/challenges/85/show
puts "当選番号を入力してください"
win_num = gets.split.map(&:to_i) #.splitは引数なしで使用した場合、半角スペースで区切り配列に配置する
puts "くじの購入枚数を入力してください"
nums = gets.to_i

my_nums = []

nums.times do |i|
  puts "#{i + 1}枚目のくじの番号を入力してください"
  my_num = gets.split.map(&:to_i)
  my_nums << my_num
end

my_nums.each do |i|
  count = 0
  win_num.each do |a|
    if i.include?(a)
      count += 1
    end
  end
  puts count
end





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