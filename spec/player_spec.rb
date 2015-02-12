require 'player'

describe Player do

  let (:board){double :board}
  
	it 'should be able to shoot at square' do
		player = Player.new
    player.add_board board
		expect(board).to receive(:get_shot_at).with("a1")
		player.shoot_at("a1")
	end



end