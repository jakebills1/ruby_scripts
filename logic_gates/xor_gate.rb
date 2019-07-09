class XorGate

  def truth_table(a, b)
    if a + b != 1
      return 0
    else
      return 1
    end
  end
end
  
x = XorGate.new
puts x.truth_table(1, 1)
