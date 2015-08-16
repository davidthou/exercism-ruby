class Grains
  def self.square(square)
    2**(square - 1)
  end

  def self.total
    square(65) - 1
  end
end
