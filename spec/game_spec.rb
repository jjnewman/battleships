require 'game'

describe Game do
  
  let(:game)            {Game.new}


  let(:board)           {double :board}
  let(:player1)         {double :player1}
  let(:player2)         {double :player2}
  let(:winning_player)  {double :player, opponents_board: sunk_board}
  let(:sunk_board)      {double :sunk_board}

  it 'should have two players' do
    game.add_players(player1, player2)
    expect(game.player_one).to eq player1
    expect(game.player_two).to eq player2 
  end

  it 'should not be won at beginning' do
    game.add_players(player1, player2)
    expect(game.winner).to eq nil
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

  #identify a winner 
  xit "should be won when all the opponent's ships are sunk" do
    game.add_players(winning_player, player2)
    expect(game.winner).to eq winning_player
  end
end