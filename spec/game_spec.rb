require 'game'

describe Game do
  
  let(:game)            {Game.new}

  let(:player1)         {double :player1, opponents_board: midgame_board }
  let(:player2)         {double :player2, opponents_board: midgame_board }
  
  let(:winning_player)  {double :player, opponents_board: all_sunk_board}
  let(:midgame_player)  {double :midgame_player, opponents_board: midgame_board}
  
  let(:midgame_board)   {double :midgame_board, all_ships_sunk?: false}
  let(:all_sunk_board)  {double :all_sunk_board, all_ships_sunk?: true}

  it 'should have two players' do
    game.add_players(player1, player2)
    expect(game.player_one).to eq player1
    expect(game.player_two).to eq player2 
  end

  it "should know whos turn it is" do
    game.add_players(player1, player2)
    expect(game.turn).to eq player1
  end

  it "should be able to end a turn and move to the next" do
    game.add_players(player1, player2)
    game.end_turn
    expect(game.turn).to eq player2
  end 

  it 'should not be won at beginning' do
    game.add_players(player1, player2)
    expect(game.winner).to eq nil
  end

  it "should identify a winner if player has sunk oppoents ships at the end of turn" do
    game.add_players(winning_player, player2)
    game.end_turn
    expect(game.winner).to eq winning_player
  end

  it "should not identify a winner if neither player has sunk oppoents ships at the end of turn" do
    game.add_players(midgame_player, midgame_player)
    game.end_turn
    expect(game.winner).to eq nil
  end
end


