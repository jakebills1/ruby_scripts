require 'pry'
def panagram?(string)
  arr = []
  string.split("").each do |letter|
    downcased_letter = letter.downcase
    if !arr.include?(downcased_letter) && downcased_letter.match(/[a-z]/) != nil
      arr.push(downcased_letter)
    end
  end
  return arr.length == 26 ? true : false
end
puts panagram?("abcdefghijklmnopqrstuvwxyz")
puts panagram?("The quick brown fox jumps over the lazy dog.")
puts panagram?("This is not a pangram.")
puts panagram?("Cwm fjord bank glyphs vext quiz")