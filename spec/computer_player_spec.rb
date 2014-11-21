require 'spec_helper'

describe ComputerPlayer do

  let(:hal) { ComputerPlayer.new }

  it 'makes a random choice of weapon for each game' do
    expect(hal.options).to include(hal.choice)
  end

end