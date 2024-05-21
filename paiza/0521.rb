# https://paiza.jp/challenges/698/show

puts "クラスの人数を入力してください"
members = gets.to_i

candidate = []
current_candidate = []

  members.times do |i|
    puts "#{i + 1}人目を投票してください"
    candidate << gets.chomp
  end

 
  
