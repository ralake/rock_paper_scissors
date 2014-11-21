require 'spec_helper'

describe Player do

  let(:rich) { Player.new("Rich") }
  let(:game) { double :Game }
  
  it 'is initialized with a name' do
    expect(rich.name).to eq("Rich")
  end

  it 'can choose a weapon' do
    expect(rich.choice("rock")).to eq("rock")
  end

end