require 'player'

describe Player do

  let (:board1){double :board1}
  let (:board2){double :board2}
  let (:board_all_sunk){double :sunk_board  }
  let (:battleship){double :battleship}
  
  it 'can place a ship on own board horizontally' do
    player = Player.new
    player.add_board(board1)
    expect(board1).to receive(:place_horizontal).with("a1", battleship)
    player.place(battleship, "a1", :horizontal)
  end

  it 'can place a ship on own board vertically' do
    player = Player.new
    player.add_board(board1)
    expect(board1).to receive(:place_vertical).with("a1", battleship)
    player.place(battleship, "a1", :vertical)
  end 

  it 'can identify opponents board' do
    player1 = Player.new
    player1.add_opponent board2
    expect(player1.opponents_board).to eq board2
  end

  it 'can shoot at opponents board' do
    player1 = Player.new
    player1.add_board board1
    player1.add_opponent board2
    
    expect(board2).to receive(:get_shot_at).with("a1")
    player1.shoot_at("a1")
  end

end