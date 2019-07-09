class StringParser

  def string_reverse(str)
    # reverses a string by pushing and popping from a stack
    arr = str.split("")
    stack = []
    results = []
    for c in arr
      stack << c  
    end
    arr.length.times do
      results << stack.pop
    end
    return results.join("")
  end

end

describe "An instance of StringParser" do
  context "when passed a valid string" do
    it "should return a reversed string" do
      sp = StringParser.new
      test_string = "balls"
      expect(sp.string_reverse(test_string)).to eql "sllab"
    end
  end
end