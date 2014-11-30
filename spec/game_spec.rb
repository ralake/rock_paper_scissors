require 'spec_helper'

describe Game do

  let(:hal)         { double :ComputerPlayer, choice: "Scissors" }
  let(:droid)       { double :ComputerPlayer, choice: "Paper" }
  let(:johnny_five) { double :ComputerPlayer, choice: "Rock" }
  let(:rich)        { double :Player , is_a?: Player, choice: "Rock" }
  let(:clare)       { double :Player , choice: "Scissors" }
  let(:will)       { double :Player , choice: "Paper" }
  let(:game)        { Game.new }

  it 'can add a player' do
    game.add_player(rich)
    expect(game.players).to eq([rich])
  end

  it 'can select a specific type of player' do
    game.add_player(rich)
    game.add_player(droid)
    expect(game.find_player(Player)).to eq(rich)
  end

  it 'knows that rock beats scissors' do
    game.add_player(rich)
    game.add_player(hal)
    expect(game.results).to eq('You win!')
  end

  it 'knows that scissors beats paper' do
    game.add_player(clare)
    game.add_player(droid)
    expect(game.results).to eq('You win!')
  end

  it 'knows that paper beats rock' do
    game.add_player(will)
    game.add_player(johnny_five)
    expect(game.results).to eq('You win!')
  end

  it 'knows that scissors lose to rock' do
    game.add_player(clare)
    game.add_player(johnny_five)
    expect(game.results).to eq('You lose...')
  end

  it 'knows that paper loses to scissors' do
    game.add_player(will)
    game.add_player(hal)
    expect(game.results).to eq('You lose...')
  end

  it 'knows that rock loses to paper' do
    game.add_player(rich)
    game.add_player(droid)
    expect(game.results).to eq('You lose...')
  end

  it 'knows if the game is a draw' do
    game.add_player(rich)
    game.add_player(johnny_five)
    expect(game.results).to eq("It's a draw.")
  end
  


end