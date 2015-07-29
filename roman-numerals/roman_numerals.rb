class Fixnum
  ROMAN_NUMERALS = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }

  def to_roman
    arabic_numer = self

    ROMAN_NUMERALS.map do |arabic, roman|
      quotient, arabic_numer = arabic_numer.divmod(arabic)
      roman * quotient
    end.join
  end
end
