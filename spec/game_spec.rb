require 'game'

describe Game do

  subject(:imogen) { double :player1 }
  subject(:irina) { double(:player2, receive_damage: true, score: 50) }


  it 'reduces score by 10 when attacking' do
    game = Game.new(imogen, irina)
    game.attack(irina)
    expect(irina.score).to eq 50
  end

end
