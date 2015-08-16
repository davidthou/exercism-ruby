class Prime
  def self.nth(position)
    fail ArgumentError, 'Invalid position' if position < 1
    return 2 if position == 1

    i = 1
    found_primes = 1
    while found_primes < position
      i += 2
      found_primes += 1 if self.prime?(i)
    end
    i
  end

  def self.prime?(n)
    return false if n == 1
    return true if n == 2
    (2..Math.sqrt(n).ceil).each do |i|
      return false if (n % i).zero?
    end
    true
  end
end
