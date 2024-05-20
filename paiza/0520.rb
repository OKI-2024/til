# https://paiza.jp/challenges/580/show
puts "レーダーの範囲を縦横で入力してください"
line, column = gets.split.map(&:to_i)

fishes = []

line.times do |i|
  puts "#{i + 1}行目にいる魚を列ごとに入力してください"
  fishes << gets.split.map(&:to_i)
end

puts "網の範囲を縦横で入力してください"

net_line, net_column = gets.split.map(&:to_i)

networks = []

net_line.times do |i|
  puts "#{i + 1}行目の網の有無を入力してください"
  networks << gets.chomp.chars # charsによって[".", "#", "."]のような配列になる
end

def max_catch(fishes, networks)
  fish_line = fishes.length
  fish_column = fishes[0].length
  net_line = networks.length
  net_column = networks[0].length
  max_fish = 0

  # 網を配置できるすべての位置を調べる
  (0..(fish_line - net_line)).each do |i|
    (0..(fish_column - net_column)).each do |j|
      current_fish = 0

      # 網の形状に従って捕まえる魚の数を計算する
      (0...net_line).each do |x|
        (0...net_column).each do |y|
          if networks[x][y] == '#'
            current_fish += fishes[i + x][j + y]
          end
        end
      end

      # 最大の漁獲量を更新する
      max_fish = [max_fish, current_fish].max
    end
  end

  max_fish
end


puts max_catch(fishes, networks)





# https://paiza.jp/challenges/472/show

puts "爆弾を仕掛けるマス目を縦横で入力してください"

line, record = gets.split.map(&:to_i)

field = []

line.times do |i|
  puts "#{i + 1}行目に設置する爆弾を入力してください（例）設置する；#, 設置しない：."
  field << gets.chomp.chars # charsによって[".", "#", "."]のような配列になる
end


explosion_map = Array.new(line) { Array.new(record, false) }
# Array.new(line)によって[nil, nil, nil]という配列を作成※line = 3の場合
# Array.new(record, false), lineが3でrecordが4であれば、[false, false, false, false], [false, false, false, false], [false, false, false, false]

field.each_with_index do |row, i|
  row.each_with_index do |cell, j|
    if cell == "#"
      
      (0...record).each { |x| explosion_map[i][x] = true } # 列全体
      (0...line).each { |y| explosion_map[y][j] = true }   # 行全体
    end
  end
end


exploded_count = explosion_map.flatten.count(true) # flatten メソッドは二次元配列を一次元に変換する

puts exploded_count
