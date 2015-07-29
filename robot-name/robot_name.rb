class Robot
  attr_accessor :name

  def initialize
    @name = random_name
  end

  def reset
    self.name = random_name
  end

  private

  def alphabet
    ('A'..'Z').to_a
  end

  def numbers
    (0..9).to_a
  end

  def random_name
    alphabet.sample(2).join + numbers.sample(3).join
  end
end
