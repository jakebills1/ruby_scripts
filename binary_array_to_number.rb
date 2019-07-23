def binary_array_to_number(arr)
  sum = 0
  arr.reverse.each_with_index do |dig, i| 
    sum += ( dig * (2 ** i) ) 
  end
  sum
end 
puts binary_array_to_number([0,0,0,1])
puts binary_array_to_number([1,1,1,1])
puts binary_array_to_number([0,1,0,1])
puts binary_array_to_number([1,1,1,1,1])
