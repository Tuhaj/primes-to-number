class PrimesToNumber
  def initialize(last_number)
    @last_number = last_number
  end

  def self.prime?(number)
    (2..Math.sqrt(number).floor).none? { |n| number % n == 0 }
  end

  def primes
    (2..@last_number).select {|n| self.class.prime?(n) }
  end

  def mask
    primes.reduce('') do |memo, prime|
      memo += '0' * (prime - memo.size - 2) + '1'
    end
  end

  def to_metaprime
    self.mask.to_i(2)
  end
end
