require 'pry'
require 'rspec'

def fib2(n)
  solutions = [0,1,1,2,3,5,8,13,21,34,55]
  solutions[n]
end

def fib(arr, position)
  return arr[position] if position < 0
  fib(arr, position - 1)
  arr << (arr[-2] + arr[-1])
  arr[position]
end

def next_num(arr)
  arr[-2] + arr[-1]
end

def fib_seq(arr)
  arr << next_num(arr)
end

def fib_num(arr, position)
  arr[position]
end

def fibber(arr, position)
  (position).times do
    arr << (arr[-2] + arr[-1])
  end
    arr[position-1]
end

#fib 0 #=> 0
#fib 11 #=> 55

RSpec.describe 'returns fibonacci sequence' do

  it 'returns the next fibonacci num given the first two elements' do
    a = next_num([0,1])
    expect(a).to eq(1)
  end

  it 'returns the next fibonacci num given the first three elements' do
    a = next_num([0,1,1])
    expect(a).to eq(2)
  end

  it 'returns the next fibonacci num given the first four elements' do
    a = next_num([0,1,1,2])
    expect(a).to eq(3)
  end

  it 'appends the next fibonacci num onto the end of the array' do
    a = fib_seq([0,1,1,2])
    expect(a).to eq([0,1,1,2,3])
  end

  it 'returns the fibonacci num based for a given index position' do
    a = fib_num([0,1,1,2], 3)
    expect(a).to eq(2)
  end

  it 'combines all of the functionality without recursion into one method' do
    a = fibber([0,1], 3)
    expect(a).to eq(1)
  end

  it 'combines all of the functionality with recursion into one method' do
    a = fib([0,1], 3)
    expect(a).to eq(2)
  end

  it 'recursive method returns 55 as 10th element' do
    a = fib([0,1], 10)
    expect(a).to eq(55)
  end
end


