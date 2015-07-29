class Raindrops
  PRIME_FACTORS = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }

  def self.convert(number)
    output = ''
    PRIME_FACTORS.each do |prime_factor, response|
      output << response if number.modulo(prime_factor).zero?
    end
    return number.to_s if output.empty?
    output
  end
end
