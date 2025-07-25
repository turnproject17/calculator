Spec.describe Calculator do
  let(:calc) { Calculator.new }

  describe "add" do // writing all the possible test cases related to add method
    it " return 0 if no argument passed" do
      expect(calc.add()).to eq(0)
    end

    it " return 0 if string argument passed" do
      expect(calc.add('abc')).to eq(0)
    end

    it " return 0 if negative numbers passed" do
      expect(calc.add(-1)).to raise_error("negative numbers are not allowed: -1")
    end

    it " return 0 if number is greater than 1000 passed" do
      expect(calc.add(1001)).to eq(0)
    end
  end
end
