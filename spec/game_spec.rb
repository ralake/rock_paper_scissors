require 'spec_helper'

describe Game do

  let(:hal) { double :ComputerPlayer, choice: :scissors }
  let(:hal2) { double :ComputerPlayer, choice: :paper }
  let(:hal3) { double :ComputerPlayer, choice: :rock }
  let(:rich) { double :Player , choice: :rock }
  let(:game) { Game.new }

  before(:each) do
    game.add_player(rich)
  end

  it 'can add a player' do
    expect(game.players).to eq([rich])
  end

  it 'knows if a player has beaten the computer' do
    game.add_player(hal)
    expect(game.won?).to be true
  end

  it 'knows if a player has been beaten by the computer' do
    game.add_player(hal2)
    expect(game.won?).to be false
  end

  it 'knows if the game is a draw' do
    game.add_player(hal3)
    expect(game.won?).to eq("Draw!")
  end
  
end