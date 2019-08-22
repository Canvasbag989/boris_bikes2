require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:bikes) }
  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bikes' do
    bike = Bike.new

    expect(bike).to be_working
  end

  it 'raises error when no bikes are available' do
    expect { subject.release_bike }.to raise_error
  end

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq "Bike docked"
    end
  end

describe '#dock' do
  it 'raises an error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
