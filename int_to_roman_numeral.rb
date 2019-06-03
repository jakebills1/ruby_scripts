def int_to_roman_numeral(i)
  dict = { 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX", 10 => "X", 20 => "XX", 30 => "XXX", 40 => "XL", 50 => "L", 60 => "LX", 70 => "LXX", 80 => "LXXX", 90 => "XC", 100 => "C" }
  if validate_int(i)
    if (1..10) === i
      puts dict[i]
    elsif i % 10 == 0
      puts dict[i]
    elsif (11..99) === i
      prefix = dict[i - (i % 10)]
      suffix = dict[i % 10]
      puts prefix + suffix
    else
      puts dict[i]
    end
  else
    puts "Invalid input, i must be a whole number 1-100"
    exit(1)
  end
  
  
end

def validate_int(i)
  if i.floor == i && (1..100) === i
    true
  else
    false
  end
end

# test cases
int_to_roman_numeral(1)
int_to_roman_numeral(2)
int_to_roman_numeral(3)
int_to_roman_numeral(4)
int_to_roman_numeral(5)
int_to_roman_numeral(6)
int_to_roman_numeral(7)
int_to_roman_numeral(8)
int_to_roman_numeral(9)
int_to_roman_numeral(10)
int_to_roman_numeral(37)
int_to_roman_numeral(50)
int_to_roman_numeral(100)
int_to_roman_numeral(99)

