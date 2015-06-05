require 'rspec'

def append(arr, n)
  if n.zero?
    return arr << n
  end

  arr << n
  append(arr, n-1)
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
    a = append([9], 0)
    expect(a).to eq([9,0])
  end

  it 'appends incrementally smaller numbers down to 0' do
    a = append([], 3)
    expect(a).to eq([3,2,1, 0])
  end

end
