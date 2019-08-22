require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:bike) }
  
  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it 'raises error when no bikes are available' do
    expect { subject.release_bike }.to raise_error
  end 

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
end
