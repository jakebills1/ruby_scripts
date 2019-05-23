def replace_nth(str, nth, old_char, new_char)
  arr = str.split("")
  counter = 1
  for c in arr
    if c == old_char && nth == counter
      arr[arr.index(c)] = new_char
      counter = 1
    elsif c == old_char && nth != counter
      counter += 1
    end
  end
  arr.join("")
end


