# https://paiza.jp/challenges/48/show
puts "箱の数とボールの半径を入力してください"
n, r = gets.split.map(&:to_i)

count = []

n.times do |i|
  puts "高さ、幅、奥行きを入力してください"
  h, w, d = gets.split.map(&:to_i)
  min = [h, w, d].min # .minは配列内での最小値を返り値とするメソッド
  if r <= min
    count << i + 1
  end
end

puts count.sort # .sortは昇順にするメソッド、ちなみに降順にしたいときには.sort.reverse



# https://paiza.jp/challenges/73/show

def remainder(m, p, q)

fresh_remainder = m * (p - 100).abs / 100.to_f #.absは絶対値を取得するメソッド, .to_fは整数だけでなく、小数点まで取得する際のメソッド
dish_remainder = fresh_remainder * (q - 100).abs / 100.to_f
puts dish_remainder

end

puts "仕入れ・生で売れる率・惣菜で売れる率"
m, p, q = gets.split.map(&:to_i) # Paizaでの定番の数値入力方法
remainder(m, p, q)


# https://paiza.jp/challenges/416/show

s = gets.chomp
s.delete!("aeiouAEIOU")
puts s
 # deleteメソッドは特定の文字列を取り除くメソッド, !は破壊的メソッドで、!を付けない場合、puts sしても元々入力した内容が出力されるだけ
