require 'byebug'
def order_weight(string)
    # your code
    arr = string.strip.split(" ")
    # make hash where key = input and sum of digits is value
    return sort(arr)
end

def sum_digits(string)
  sum = 0 
  string.split("").each do |digit|
    sum += digit.to_i
  end
  sum
end

def sort(arr)
  results = []
  arr.each do |num|
    weight = sum_digits(num)

  end
end


order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")