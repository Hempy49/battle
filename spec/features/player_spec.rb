require "player.rb"

describe Player do

  subject(:player) { described_class.new("Simon") }

  it "returns a name" do
    expect(player.name).to eq "Simon"
  end
end
