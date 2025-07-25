class Calculator
  def init
    @numbers = []
  end

  def add(numbers)
    get_sumable_numbers(numbers.to_s)
    validate_number
    return @numbers.sum
  end

  private

  def validate_number
    negative_numbers = @numbers.select{|num| num < 0}
    if negative_numbers.any?
      raise "negative numbers are not allowed: #{negative_numbers.join(',')}"
    end
  end

  def get_sumable_numbers(numbers)
    @numbers = numbers.scan(/-?\d+/).map(&:to_i)
                      .select {|num| num <= 1000}
  end
end
