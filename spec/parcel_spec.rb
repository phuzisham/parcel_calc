require('rspec')
require('pry')
require('parcel')

describe('#parcel') do
  it('will return volume') do
    expect(Parcel.new(2,3,4).volume).to(eq(24))
  end

  it('will return cost') do
    expect(Parcel.new(2,3,4).cost_to_ship(20, 'air')).to(eq(38))
  end

  it('will return cost with distance') do
    expect(Parcel.new(2,3,4).cost_to_ship(20, 'ground')).to(eq(28))
  end

  it('will return cost with distance') do
    expect(Parcel.new(2,3,4).cost_to_ship(17, 'ground')).to(eq(12))
  end
end
