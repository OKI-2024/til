# https://paiza.jp/challenges/621/show
puts "路線数と駅数を入力して"
routes, terminals = gets.split.map(&:to_i)

fares = []

routes.times do |r|
  puts "#{r + 1}路線目の運賃を入力して"
  fare = gets.split.map(&:to_i)
  fares << fare
end

puts "経由する駅の数を入力して"
route_to_terminal = gets.to_i
route_and_terminal = []

route_to_terminal.times do |num|
  puts "#{num + 1}回目の入力：路線と駅のナンバーを入力して"
  n = gets.split.map(&:to_i)
  route_and_terminal << n
end

sum = 0
current_terminal = 0 #現在地は配列の0番目
route_and_terminal.each do |x|
  route_index = x[0] - 1 #路線番号を取得※-1しているのは、後で使うときにfaresの添え字に合わせて
  terminal_index = x[1] - 1 #駅番号を取得※-1しているのは、後で使うときにfaresの添え字に合わせて
  fare =( fares[route_index][current_terminal] - fares[route_index][terminal_index] ).abs #ひとつめ：現在地（例）1路線目の1駅目, ふたつめ：目的地（例）1路線目の4駅目
  sum += fare
  current_terminal = terminal_index # 現在地（何駅目か）を更新
end

puts sum







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
