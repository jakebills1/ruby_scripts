require 'pry'
class StringParser

  def string_reverse(str)
    # reverses a string by pushing and popping from a stack
    if (str.is_a?(String)) 
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
    else
      raise "arg must be a string"
    end
  end

end
describe "An instance of StringParser" do
  before(:each) do
    @sp = StringParser.new
  end
  context "when passed an invalid arg", :error => true do
    it "should raise an error" do
      expect { @sp.string_reverse(2) }.to raise_error("arg must be a string")
    end
  end
  context "when passed a valid string" do
    it "should return a string" do
      expect(@sp.string_reverse("balls")).to be_instance_of String 
    end
    it "should return a reversed string" do
      test_strings = ["balls", "apple", "toaster"]
      expect(@sp.string_reverse(test_strings[0])).to eql "sllab"
      expect(@sp.string_reverse(test_strings[1])).to eql "elppa"
      expect(@sp.string_reverse(test_strings[2])).to eql "retsaot"
    end
  end
end