require '../lib/algos/sort'

include Sort

describe 'mergesort' do

  it "sorts an array of even values" do
    ary = [3, 1, 2, 6, 5, 4]
    expect(mergesort(ary)).to eq ary.sort
  end

  it "sorts an array of odd values" do
    ary = [3, 1, 2, 6, 4, 5, 7]
    expect(mergesort(ary)).to eq ary.sort
  end

  it "sorts an array of one value" do
    expect(mergesort([1])).to eq [1]
  end

  it "returns an empty array if provided as an argument" do
    expect(mergesort([])).to eq []
  end
end
