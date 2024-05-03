# 問1

n = 15

if n % 3 == 0
 puts "#{n}は3の倍数です"
else
 puts "#{n}は3の倍数ではありません"
end


# 問2

n = 35

if n % 7 == 00 && n % 5 == 0
  puts "#{n}は5および7の倍数です"
elsif  n % 7  == 00
  puts "#{n}は7の倍数です"
elsif  n % 5  == 00
  puts "#{n}は5の倍数です"
else
  puts "#{n}はどちらの倍数でもありません"
end


# 問3

nums = [1,2,3,4,5,6,7,8,9,10]

nums.each do |n|
  if n % 3 == 0 && n % 2 == 0
    puts "#{n}は2および3の倍数です"
  elsif n % 3 == 0
    puts "#{n}は3の倍数です"
  elsif n % 2 == 0
    puts "#{n}は2の倍数です"
  else
    puts "#{n}はどちらの倍数でもありません"
  end
end


# 問4

n = 1

while n <= 10 do # nが10以下である限り実行
    if n % 3 == 0 && n % 2 == 0
      puts "#{n}は2および3の倍数です"
    elsif n % 3 == 0
      puts "#{n}は3の倍数です"
    elsif n % 2 == 0
      puts "#{n}は2の倍数です"
    else
      puts "#{n}はどちらの倍数でもありません"
   end
   n = n + 1
end

# 問5

n = 1
 sum = 0
 while n <= 100 do
   if n % 11 == 0
     sum = sum + n
   end
   n = n + 1
 end
 puts sum
 
# 問6

n = 1
 sum = 0
 while n <= 1000 do
   if n % 11 == 0
     sum = sum + n
   elsif n % 7 == 0
     sum = sum + n
   end
   n = n + 1
 end
 puts sum

 # 問7

 nums = (1..23)
 
 sum = 0
 
 nums.each do |n|
  if 2 % n == 0
    sum += 1
  end
end

if sum <= 2
  puts "素数です"
else
  puts "素数ではありません"
end


# 問8

require 'prime'

nums = []
num = 2

while nums.length <= 101 do
    
    if num.prime?
        nums << num
    end
    num += 1
    
end
    
p nums
            
    