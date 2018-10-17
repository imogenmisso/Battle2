require 'game'

describe Game do

  subject(:imogen) { double :player1, :name => "imogen", :score => 60 }
  subject(:irina) { double :player2, :name => "irina", :score => 60 }
# this test needs fixing
  it 'reduces score by 10 when attacking' do
    game = Game.new(imogen, irina)
    allow(irina).to receive(:attack)
    expect { subject.attack(irina) }.to change { irina.score }.by(-10)
  end

end
