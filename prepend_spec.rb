require 'pry'
require 'rspec'

def prepend(arr, num)
  return arr if num < 0
  prepend(arr, num-1)
  arr.unshift(num)
  arr
end

#prepend([], 0) #=> [0]
#prepend([], 1) #=> [1,0]
#prepend([], 2) #=> [2,1,0]
#prepend([], 3) #=> [3,2,1,0]

RSpec.describe 'unshift' do
  it 'adds 0 to the front when the array is [0]' do
    a = prepend([], 0)
    expect(a).to eq([0])
  end

  it 'adds 1 to the front when the array is [1]' do
    a = prepend([], 1)
    expect(a).to eq([1, 0])
  end

  it 'adds 2 to the front when the array is [1, 0]' do
    a = prepend([], 2)
    expect(a).to eq([2, 1, 0])
  end

  it 'adds 3 to the front when the array is [2, 1, 0]' do
    a = prepend([], 3)
    expect(a).to eq([3, 2, 1, 0])
  end
end

