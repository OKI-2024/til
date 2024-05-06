# https://paiza.jp/career/challenges/710/retry


jankens = gets.to_i


count = 0

jankens.times do
  
  a = gets.chomp
  
  b = gets.chomp

  if a == "G" && b == "C"
    count += 1
  elsif a == "C" && b == "P"
    count += 1
  elsif a == "P" && b == "G"
   count += 1
  end

end

puts count
