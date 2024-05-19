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
    top = (i == 0 || current > map_summary[i - 1][j])
    bottom = (i == map_size - 1 || current > map_summary[i + 1][j])
    left = (j == 0 || current > row[j - 1])
    right = (j == row.size - 1 || current > row[j + 1])

    if top && bottom && left && right
      count << current
    end
  end
end

puts count.sort.reverse


#左端
#右端
#一番上
#一番下