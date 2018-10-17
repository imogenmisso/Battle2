require 'player'

describe Player do

  subject(:imogen) {Player.new("Imogen")}
  subject(:irina) {Player.new("Irina")}

  it 'has a name' do
    expect(irina.name).to eq("Irina")
  end

  it 'returns score' do
    expect(irina.score).to eq 60
  end

  it 'reduces score by 10 when attacking' do
    expect(irina).to receive(:receive_damage)
    imogen.attack(irina)
  end

  it 'reduces the players points' do
    expect {irina.receive_damage}.to change {irina.score}.by(-10)
  end 
end
