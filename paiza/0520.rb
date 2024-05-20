# https://paiza.jp/challenges/472/show

puts "爆弾を仕掛けるマス目を縦横で入力してください"

line, record = gets.split.map(&:to_i)

field = []

line.times do |i|
  puts "#{i + 1}行目に設置する爆弾を入力してください（例）設置する；#, 設置しない：."
  field << gets.chomp.chars
end


explosion_map = Array.new(line) { Array.new(record, false) }


field.each_with_index do |row, i|
  row.each_with_index do |cell, j|
    if cell == "#"
      
      (0...record).each { |x| explosion_map[i][x] = true } # 行全体
      (0...line).each { |y| explosion_map[y][j] = true }   # 列全体
    end
  end
end


exploded_count = explosion_map.flatten.count(true)

puts exploded_count
