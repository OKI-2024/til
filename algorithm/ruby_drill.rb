# https://master.tech-camp.in/expert_exam_questions/yZJ6IgwZSAP1YRX8AYVF/expert_exam_responses/new
def binary_search(array, right, n)
  left = 0
  while left <= right
    center = (left + right) / 2
    if array[center] == n
      return center
    elsif array[center] < n
      left = center + 1
    else
      right = center - 1
    end
  end
  return -1 
end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
n = gets.to_i
number_of_elements = array.length
r = binary_search(array, number_of_elements, n)


if r == -1
  puts "#{n}は配列に存在しません"
else
  puts "#{n}は配列の#{r}番目に存在します"
end

  

