class XorGate

  def truth_table(a, b)
    if a + b != 1
      return 0
    else
      return 1
    end
  end
end

describe XorGate do 
  x = XorGate.new
  context "when passed valid inputs" do
    it "when passed 0, 0" do
      expect(x.truth_table(0, 0)).to eq 0
    end
    it "when passed 0, 1" do
      expect(x.truth_table(0, 1)).to eq 1
    end
    it "when passed 1, 0" do
      expect(x.truth_table(1, 0)).to eq 1
    end
    it "when passsed 1, 1" do
      expect(x.truth_table(1, 1)).to eq 0
    end
  end
end
