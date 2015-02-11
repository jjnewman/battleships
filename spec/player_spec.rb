require 'player'




describe Player do



	it 'should be able to shoot at square' do
		player = Player.new
		expect(board).to receive(:get_shot).with("a1")
		player.shoot_at("a1")



	end



end