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
