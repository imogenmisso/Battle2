require 'game'

describe Game do

  subject(:imogen) { double :player1, receive_damage: true, score: 50 }
  subject(:irina) { double(:player2, receive_damage: true, score: 50) }


  it 'reduces player 1 score by 10 when attacking' do
    game = Game.new(imogen, irina)
    game.attack
    expect(irina.score).to eq 50
  end

  it 'reduces player 2 score by 10 when attacking' do
    game = Game.new(imogen, irina)
    game.attack
    game.attack
    expect(imogen.score).to eq 50
  end

  it 'sets current player as player 1' do
    game = Game.new(imogen, irina)
    expect(game.current_player).to eq imogen
  end

end
