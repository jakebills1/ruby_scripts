def string_reverse(str)
  # reverses a string by pushing and popping from a stack
  arr = str.split("")
  stack = []
  for c in arr
    stack << c  
  end
  arr.length.times do
    puts stack.pop
  end
end

string_reverse("balls")
