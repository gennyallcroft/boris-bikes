require 'van.rb'
require 'garage.rb'

describe Van do
  it { is_expected.to respond_to :collect_bikes }
  it { is_expected.to respond_to :distribute_bikes }
  it 'collect broken bikes' do
    station = DockingStation.new
    station.dock(Bike.new, true)
    expect(subject.collect_bikes(station)).to eq 1
  end
  it 'distribute fixed bikes' do
    garage = Garage.new
    garage.accept_broken_bikes [Bike.new]
    expect(subject.distribute_bikes(garage)).to eq 1
  end
end
