def digital_root(n)
#   if n is < 10
#     return n
#   else
#     peel off digits to an array
#     sum, then call digital root on sum 
  if n < 10
    return n
  else
    sum = 0, digits = []
    while n > 0
      digits << n % 10
      n /= 10
    end
    sum = digits.reduce(:+)
    digital_root(sum)
  end
end