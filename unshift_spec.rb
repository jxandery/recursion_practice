require 'pry'
require 'rspec'

def prepend(arr, num)
  return [0] if num == 0
  arr.unshift(num)
  prepend(arr, num-1)
  require "pry"; binding.pry
end

#unshift([], 0) #=> [0]
#unshift([], 1) #=> [0,1]
#unshift([], 2) #=> [0,1,2]
#unshift([], 3) #=> [0,1,2,3]

RSpec.describe 'unshift' do
  it 'adds 0 to the front when the array is [0]' do
    a = prepend([], 0)
    expect(a).to eq([0])
  end

  it 'adds 0 to the front when the array is [1]' do
    a = prepend([], 1)
    expect(a).to eq([0, 1])
  end
end

