Spec.describe Calculator do
  let(:calc) { Calculator.new }

  describe "add" do // writing all the possible test cases related to add method
    it " return 0 if no argument passed" do
      expect(calc.add()).to eq(0)
    end

    it " return 0 if string argument passed" do
      expect(calc.add('abc')).to eq(0)
    end

    it " return 0 if delimeters are passed in argument" do
      expect(calc.add('&&&******^*%^&%^%^%&')).to eq(0)
    end

    it " return exception if negative numbers passed" do
      expect(calc.add(-1)).to raise_error("negative numbers are not allowed: -1")
    end

    it " return 0 if number is greater than 1000 passed" do
      expect(calc.add(1001)).to eq(0)
    end

    it " return sum if integer value is passed" do
      expect(calc.add(1*2)).to eq(2)
    end

    it " return ignore number greater than 1000 passed" do
      expect(calc.add('2,3,4,1001')).to eq(9)
    end

    it " return sum if string with '\n' delimeters" do
      expect(calc.add('3\n4')).to eq(7)
    end

    it " return sum if string with '{{{[[--++' special char delimeters" do
      expect(calc.add('3[[4&&6{{[8\\9;8;1?8/9*9^3%2')).to eq(70)
    end

    it " raise an exception if string with special char and negative number in delimeters" do
      expect(calc.add('3[[4&&6{{[8\\9;-8;1?8/9*9^3%2')).to raise_error('negative numbers are not allowed: -8')
    end
    
  end
end
