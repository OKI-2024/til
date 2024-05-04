# https://paiza.jp/works/challenges/480/retry

n = gets.to_i

x = gets.to_i

y = gets.to_i

range_array = (1..n).to_a


range_array.each do |num|
  if num % x == 0 && num % y == 0
    puts "AB"
  elsif num % x == 0  
    puts "A"
  elsif num % y == 0 
    puts "B"
  else
    puts "N"
  end
end