require 'spec_helper'

describe Player do

  let(:rich) { Player.new("Rich") }
  let(:game) { double :Game }
  
  it 'is initialized with a name' do
    expect(rich.name).to eq("Rich")
  end

  it 'can choose a weapon' do
    rich.choose("Rock")
    expect(rich.choice).to eq("Rock")
  end

end