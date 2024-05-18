# https://paiza.jp/challenges/465/show

puts "歌う人数と課題曲の長さを入力してください"

members, song_length = gets.split.map(&:to_i)

correct_pitch = []

song_length.times do |i|
  puts "#{i + 1}小節の正しい音程を入力してください"
  pitch = gets.to_i
  correct_pitch << pitch
end

ind_pitches = []  

members.times do |m|
  puts "#{m + 1}番目の方の音程を小節毎に入力してください"
  pitches = []
  song_length.times do |i|
    puts "#{i + 1}小節の音程を入力してください"
    ind_pitch = gets.to_i
    pitches << ind_pitch
  end
  ind_pitches << pitches
end

scores = []

ind_pitches.each do |pitches|
  score = 100
  pitches.each_with_index do |pitch, index|
    interval = (pitch - correct_pitch[index]).abs
    if interval <= 5
      score -= 0
    elsif interval <= 10
      score -= 1
    elsif interval <= 20
      score -= 2
    elsif interval <= 30
      score -= 3
    else
      score -= 5
    end
  end
  scores << score
end


if scores.max <= 0
  puts "0"
else
  puts scores.max
end



# https://paiza.jp/challenges/498/show


puts "ラッキーデイに設定する数字を入力してください"
lucky_day = gets.chomp
lucky_days = 0

(0..365).each do |i|
  if i.to_s.include?(lucky_day)
    lucky_days += 1
  end
end

puts lucky_days


