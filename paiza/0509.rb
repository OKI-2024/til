# https://paiza.jp/challenges/706/show

puts "文字列を入力してください"
s = gets

r = s.gsub(/-{2,}/,  "-")
# 2つ以上"-"が続く場合はそれを単一の"-"に置換する
# 2, とすることで2回以上という表現になり、例えば-{2,5}であれば、2回以上5回以内となる
puts r


# https://paiza.jp/challenges/555/show

puts "しりとりの回数を入力してください"
num = gets.to_i

puts "最初の文字を入力してください"
back_string = gets.chomp[-1] # 文字のお尻get

(num - 1).times do |i|
  puts "#{i + 2}回目の文字を入力してください"
  first_string = gets.chomp
  f_string = first_string.slice(0) # 文字の頭get
  
  if back_string != f_string
    print [back_string, f_string].join(" ")
    break
  end
  back_string = first_string.slice(-1) # 最後に入力した文字のお尻を代入

  if i == num - 2 # 無事に指定の回数終了したら"Yes"を出力する
    puts "Yes"
  end

end



  
