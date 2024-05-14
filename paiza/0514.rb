# https://paiza.jp/challenges/346/show
# 大文字で始まるものは定数として定義され、基本的に再代入されない（技術的にはできるが望ましくなく、ターミナルでも警告がでる）


puts "攻撃力、守備力、素早さを入力してください"

ATK, DEF, AGI = gets.split.map(&:to_i)

puts "モンスター数を入力してください"

N = gets.to_i

m_names = []

N.times do |i| 
  
  puts "#{i + 1}番目のモンスター名と6つの数値を入力してください"
  input = gets.chomp.split #名前と数字を半角でペース区切りで同時に入力してもらう
  m_name = input[0] # 一番最初に入力した名前[0]をm_nameとして定義する
  min_atk, max_atk, min_def, max_def, min_agi, max_agi = input[1..6].map(&:to_i) #名前以降の値をそれぞれto_iして数値に変換する

  if ATK >= min_atk && ATK <= max_atk && DEF >= min_def && DEF <= max_def && AGI >= min_agi && AGI <= max_agi
    m_names << m_name # 該当した場合はスコープ外のm_namesに投入する
  end

end

if m_names.length >= 1
  puts m_names
else
  puts "no evolution"
end




