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

end
