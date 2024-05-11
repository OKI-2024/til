# https://paiza.jp/works/challenges/76/retry

puts "中心の座標、それぞれの半径を入力してください"

xc, yc, r_1, r_2 = gets.split.map(&:to_i) 

puts "人数を入力してください"

n = gets.to_i

n.times do |i|
  puts "#{i + 1}番目の方、座標を入力してください"
  x_1, y_1 = gets.split.map(&:to_i)
  distance_squared = (x_1 - xc)**2 + (y_1 - yc)**2 # 距離の二乗を保存 **2
  if distance_squared <= r_2**2 && distance_squared >= r_1**2
    puts "yes"
  else
    puts "no"
  end
end
