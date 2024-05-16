puts "問題数を入力してください"

num = gets.to_i

nums = []

num.times do |i|
  puts "1周目、2周目の正誤をyかnで半角スペース区切りで入力してください"
  puts "#{i + 1}回目の入力です"
  answer = gets.chomp.split
  
  # 'yy' 以外の組み合わせをカウント
  count = 0
  answer.each_slice(2) do |first, second|
    if first != 'y' || second != 'y'
      count += 1
    end
  end
  
  if count >= 1
    nums << i + 1 # iは0始まりなので、+1して回目を表示
  end
end

puts nums.length
puts nums
