require 'rspec'
require_relative 'primes_to_number'

describe 'PrimesToNumber' do
  it '#primes returns primes sequence to given number' do
    expect(PrimesToNumber.new(17).primes).to eq([2,3,5,7,11,13,17])
    expect(PrimesToNumber.new(100).primes).to eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97])
  end

  it 'returns prime mask' do
    expect(PrimesToNumber.new(2).mask).to eq('1')
    expect(PrimesToNumber.new(3).mask).to eq('11')
    expect(PrimesToNumber.new(5).mask).to eq('1101')
    expect(PrimesToNumber.new(7).mask).to eq('110101')
    expect(PrimesToNumber.new(11).mask).to eq('1101010001')
  end

  it 'returns number with selected bits' do
    expect(PrimesToNumber.new(2).to_metaprime).to eq(1)
    expect(PrimesToNumber.new(3).to_metaprime).to eq(3)
    expect(PrimesToNumber.new(5).to_metaprime).to eq(13)
    expect(PrimesToNumber.new(7).to_metaprime).to eq(53)
  end
end
