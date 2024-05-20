puts "地図の大きさを入力してください"
map_size = gets.to_i

map_summary = []

map_size.times do |i|
  puts "#{i + 1}行目の山の標高を入力してください"
  map_summary << gets.split.map(&:to_i)
end

count = []

map_summary.each_with_index do |row, i|
  row.each_with_index do |current, j|
    top = (i == 0 || current > map_summary[i - 1][j]) #topが1行目（添え字的に0）であるか、またはひとつ上の行の同じ列より大きいかどうか
    bottom = (i == map_size - 1 || current > map_summary[i + 1][j])#bottomが最終行（添え字的にmap_size - 1）であるか、またはひとつ下の行の同じ列より大きいかどうか
    left = (j == 0 || current > row[j - 1])#leftが1列目（添え字的に0）であるか、または同じ行のひとつ左より大きいかどうか
    right = (j == row.size - 1 || current > row[j + 1])#rightが最終列（添え字的にrow.size - 1）であるか、またはひとつ右の列の値より大きいかどうか
    # .sizeは配列の要素数を返すメソッド

    if top && bottom && left && right # 上下左右がすべてtrueであるかを判定するif文
      count << current 
    end
  end
end

puts count.sort.reverse

