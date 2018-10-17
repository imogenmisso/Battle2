require 'player'

describe Player do
  it 'has a name' do
    player1 = Player.new("Imogen")
    expect(player1.name).to eq("Imogen")
  end
end
