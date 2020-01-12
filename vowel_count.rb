def getCount(inputStr)
  vowel_count = 0
  inputStr.length.times { |i|
    is_vowel = inputStr[i] =~ /[aeiou]/
    if is_vowel 
      vowel_count += 1
    end
  }
  vowel_count
end