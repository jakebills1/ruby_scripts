require 'pry'
def find_uniq(arr)
  # save first item in arr, compare each item in arr to that item, until a mismatch is found
  reference = arr[0]
  arr[1..arr.length - 1].each do |el|
    results = el if el != reference 
    binding.pry
  end
  binding.pry
  results
end

puts find_uniq([1, 1, 1, 1, 0])
