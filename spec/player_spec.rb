require 'spec_helper'

describe Player do

  let(:rich) { Player.new("Rich") }
  
  it 'is initialized with a name' do
    expect(rich.name).to eq("Rich")
  end

end