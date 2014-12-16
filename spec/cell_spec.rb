require 'cell'

describe Cell do

  let(:ship) { double = :ship}
  let(:cell) { Cell.new('a1') }

  it 'should contains name of itself on initialization' do
    expect(cell.name).to eq 'a1'
  end

  it 'should contain water' do 
    expect(cell.contents).to eq 'water'
  end

  it 'should contain ships' do 
    cell.add_ship(ship)
    expect(cell.contents).to eq ship
  end

end