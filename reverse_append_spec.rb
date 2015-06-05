require 'pry'
require 'rspec'



def reverse_append(arr, n)
  require "pry"; binding.pry
  return [] if n < 0

  if n.zero?
    return arr << n
  end

  reverse_append(arr, n-1)
  arr << n
end

# append([], 3)
# append([], 3-1)
# append([], 2)
# append([], 2-1)
# append([], 1)
# append([], 1-1)
# append([], 0)
# [0]
# [0] << 1
# [0,1]
# [0,1] << 2
# [0,1,2]
# [0,1,2] << 3
# [0,1,2,3]

# append([], 3)
# append([3], 3 - 1)
# append([3], 2)
# append([3,2], 2 - 1)
# append([3,2], 1)
#[0], [0,1], [0,1,2], [0,1,2,3]

RSpec.describe 'append' do
  it 'appends 0 when the number is 0' do
    a = reverse_append([],0)
    expect(a).to eq([0])
  end

  it 'appends incrementally smaller numbers down to 0' do
    a = reverse_append([], 3)
    expect(a).to eq([0,1,2,3])
  end

  it 'returns an empty array when the array is less than zero' do
    a = reverse_append([], -3)
    expect(a).to eq([])
  end
end

