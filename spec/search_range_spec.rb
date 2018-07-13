require './lib/search_range'

describe 'search_range' do
  it 'should return the range in which the value is present' do
    nums = [5,7,7,8,8,10]
    target = 8

    expect(search_range(nums, target)).to eql([3,4])
  end

  it 'should work for other arrays' do
    nums = [5,7,7,8,8,9,9,9,9,9,10,11,11,12]
    target = 9

    expect(search_range(nums, target)).to eql([5, 9])
  end

  it 'should work if the section is at the end' do
    nums = [5,6,7,7,8,8]
    target = 8

    expect(search_range(nums, target)).to eql([4,5])
  end

  it 'should return [-1, -1] if not found' do
    nums = [5,7,7,8,8,10]
    target = 6

    expect(search_range(nums, target)).to eql([-1, -1])
  end
end
