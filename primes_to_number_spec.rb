require 'rspec'
require_relative 'primes_to_number'

describe 'PrimesToNumber' do
  it '#primes returns primes sequence to given number' do
    expect(PrimesToNumber.new(17).primes).to eq([2,3,5,7,11,13,17])
    expect(PrimesToNumber.new(100).primes).to eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97])
  end

  it 'returns number with selected bits' do
    expect(PrimesToNumber.new(2).select_bits([1,2,3])).to eq(7)
    expect(PrimesToNumber.new(2).select_bits([4])).to eq(8)
  end

  it 'returns primes mask as a decimal number' do
    expect(PrimesToNumber.new(3).primes_to_binary_number).to eq(6) # 110 2 - yes, 3 - yes, 4 - no
    expect(PrimesToNumber.new(5).primes_to_binary_number).to eq(13) # 1101 as 5 is a prime number
  end
end
