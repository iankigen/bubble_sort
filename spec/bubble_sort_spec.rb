RSpec.describe BubbleSort do
  it 'has a version number' do
    expect(BubbleSort::VERSION).not_to be nil
  end

  it 'sorts in acs order' do
    expect(bubble_sort([7, 6, 5, 3, 4, 2, 1])).to eq [1, 2, 3, 4, 5, 6, 7]
  end

  it 'sorts by block' do
    expect(bubble_sort_by(%w[hi hello hey]) { |l, r| l.length - r.length }).to eq %w[hi hey hello]
  end
end
