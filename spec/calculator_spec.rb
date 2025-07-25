Spec.describe Calculator do
  describe "add" do // writing all the possible test cases related to add method
    it " return 0 if no argument passed" do
      @calculator = Calculator.new
      expect(@calculator.add()).to eq(0)
    end

    it " return 0 if string argument passed" do
      @calculator = Calculator.new
      expect(@calculator.add('abc')).to eq(0)
    end

    it " return 0 if negative numbers passed" do
      @calculator = Calculator.new
      expect(@calculator.add(-1)).to eq(0)
    end

    it " return 0 if number is greater than 1000 passed" do
      @calculator = Calculator.new
      expect(@calculator.add(1001)).to eq(0)
    end
  end
end
