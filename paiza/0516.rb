# https://paiza.jp/challenges/621/show
puts "路線数と駅数を入力して"
routes, tarminals = gets.split.map(&:to_i)

fares = []

routes.times do |r|
  puts "#{r + 1}路線目の運賃を入力して"
  fare = gets.split.map(&:to_i)
end

puts "経由する駅の数を入力して"
nums_route_to_tarminal = gets.to_i





# https://paiza.jp/challenges/679/show

puts "マスの高さと幅を入力してください"
H, W = gets.split.map(&:to_i)

rows = []

H.times do |i|
  puts "#{i + 1}行目を#か.で入力してください"
  row = gets.chomp.chars  # 文字列を文字ごとに分割する
  rows << row
end


count = 0

H.times do |y|
  W.times do |x|
    if rows[y][x] == '.'
      # 上下左右斜めの 8 方向をチェック
      if (y != 0 && y != H - 1 && x != 0 && x != W - 1 &&                  # 配列の端かどうか
          rows[y-1][x] == '#' && rows[y+1][x] == '#' &&                   # 上下
          rows[y][x-1] == '#' && rows[y][x+1] == '#' &&                   # 左右
          rows[y-1][x-1] == '#' && rows[y-1][x+1] == '#' &&               # 左上・右上
          rows[y+1][x-1] == '#' && rows[y+1][x+1] == '#')                  # 左下・右下
        count += 1  
      end
    end
  end
end

puts count





# URL失念

puts "問題数を入力してください"

num = gets.to_i

nums = []

num.times do |i|
  puts "1周目、2周目の正誤をyかnで半角スペース区切りで入力してください"
  puts "#{i + 1}回目の入力です"
  answer = gets.chomp.split
  count = 0
  if !(answer[0] == 'y' && answer[1] == 'y') ## yyの否定形
    nums << i + 1 # iは0始まりなので、+1して回目を表示
  end
end

puts nums.length
puts nums
