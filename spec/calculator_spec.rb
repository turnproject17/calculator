Spec.describe Calculator do
  describe "add" do // writing all the possible test cases related to add method
    it " return 0 if no argument passed" do
      @calculator = Calculator.new
      expect(@calculator.add()).to eq(0)
    end
  end
end
