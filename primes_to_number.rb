# question: are prime numbers showing positions of other prime numbers?
# interesting prime numbers, do it. Are there any like this?
require 'byebug'

# other names "PrimesMask"

class PrimesToNumber
  def initialize(last_number)
    @last_number = last_number
  end

  def prime?(number)
    (2..Math.sqrt(number).floor).none? { |n| number % n == 0 }
  end

  def primes
    (2..@last_number).select {|n| self.prime?(n) }
  end

  def primes_to_binary_number
    self.select_bits(primes)
  end

  def select_bit(bit)
    '1' + '0' * (bit -1)
  end

  def select_bits(array)
    array.reduce("0") do |acc, number|
      (acc.to_i(2) | select_bit(number).to_i(2)).to_s(2)
    end.to_i(2)
  end
end





