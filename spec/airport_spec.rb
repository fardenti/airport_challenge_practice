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

  # As an air traffic controller 
  # So I can get passengers on the way to their destination 
  # I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
  it 'takes off a plane from airport' do
    airport.land(plane)
    allow(airport).to receive(:stormy?).and_return false
    expect(airport.take_off(plane)).to_not eq [plane]
  end
  # it 'confirms that plane has taken off from airport' do
  # end

  # As an air traffic controller 
  # To ensure safety 
  # I want to prevent takeoff when weather is stormy 
  it 'prevents plane from takeoff' do
    airport.land(plane)
    expect{airport.take_off(plane)}.to raise_error 'its stormy, cannot take off plane'
  end
end