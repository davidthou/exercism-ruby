class Grains
  def self.square(square)
    2**(square - 1)
  end

  def self.total
    (1..64).reduce { |sum, n| sum + square(n) }
  end
end
