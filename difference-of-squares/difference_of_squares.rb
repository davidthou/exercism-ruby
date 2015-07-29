class Squares
  attr_reader :natural_number

  def initialize(natural_number)
    @natural_number = natural_number
  end

  def difference
    square_of_sums - sum_of_squares
  end

  def square_of_sums
    ((1..natural_number).reduce(:+))**2
  end

  def sum_of_squares
    (1..natural_number).reduce { |sum, n| sum + n**2 }
  end
end
