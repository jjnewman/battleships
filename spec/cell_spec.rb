require 'cell'


describe Cell do

let(:cell){Cell.new}
let(:ship){double :ship}


it 'should contain water on creation' do
	expect(cell.content).to eq :water
end

it 'should be able to add a ship' do
	cell.add(ship)
	expect(cell.content).to eq ship
end



end