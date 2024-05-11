
# https://paiza.jp/challenges/432/show

puts "マスの高さと幅の数値を入力してください"
H, W = gets.split.map(&:to_i)

board = []

puts "各マスの状態を'o'（打ち抜いた）または'x'（打ち抜かなかった）で入力してください"

H.times do |i|
  puts "#{i + 1}行目のoxを入力してください"
  row = gets.chomp.split('')
  board << row #これにより、boardは二次元配列になる→（例）[ [o, x, x], [o, o, o], [x, o, x] ]
end


scores = []

puts "各マスの得点を入力してください"

H.times do |i|
  puts "#{i + 1}行目の得点を入力してください"
  scores << gets.split.map(&:to_i)
end

total_score = 0

board.each_with_index do |row, i| #.each_with_indexは値とindex（順番）を取得することができる 
  row.each_with_index do |cell, j| # ↑で各行を取り出し、行の中のセルをeachでoxを判定する
    if cell == 'o'
      total_score += scores[i][j] # boardのi行目、j列目のセルに対応する得点を追加する（二次元配列の為、2つの数値を[]で指定する）
    end
  end
end

puts "合計得点: #{total_score}"


  





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
