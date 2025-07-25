class Calculator
  def init
  end

  def add(numbers)
    validate_number
    numbers_array = get_sumable_numbers(numbers)
  end
end
