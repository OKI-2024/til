# https://paiza.jp/challenges/425/show

puts "マス目の縦・横および桁数を入力してください"
line, column, digits = gets.split.map(&:to_i)

table = []

line.times do |i|
  puts "#{i + 1}行目の数値を入力してください"
  input = gets.chomp
  table << input.chars
end


max_sum = 0

table.each_with_index do |row, row_index|
  row.each_with_index do |n, col_index|
    # 現在の要素
    current = n.to_i

    # 右方向
    if col_index + digits - 1 < column
      right = (0...digits).map { |k| table[row_index][col_index + k] }.join.to_i #joinで配列を連結し、to_iで数値変換
      max_sum = [max_sum, right].max
    end

#mapメソッドの使い方↓↓
#array = [1, 2, 3, 4]
#result = array.map { |element| element * 2 }
#p result
# => [2, 4, 6, 8]



    # 左方向
    if col_index - digits + 1 >= 0
      left = (0...digits).map { |k| table[row_index][col_index - k] }.reverse.join.to_i #reverseは配列の順序の入れ替え
      max_sum = [max_sum, left].max
    end

    # 下方向
    if row_index + digits - 1 < line
      down = (0...digits).map { |k| table[row_index + k][col_index] }.join.to_i
      max_sum = [max_sum, down].max
    end

    # 上方向
    if row_index - digits + 1 >= 0
      up = (0...digits).map { |k| table[row_index - k][col_index] }.reverse.join.to_i
      max_sum = [max_sum, up].max
    end
  end
end

puts max_sum
