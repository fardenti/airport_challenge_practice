require 'airport'
describe Airport do
subject(:airport) {described_class.new}
let(:plane) {double :plane}


  # As an air traffic controller 
  # So I can get passengers to a destination 
  # I want to instruct a plane to land at an airport
  it 'lands a plane' do
    expect(airport.land(plane)).to eq [plane]
  end

end