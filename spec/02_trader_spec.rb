require_relative '../lib/02_trader'

describe "#day_trader" do

  it "trader 1" do
    s = day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
    expect(s).to eq([1, 4])
  end

end