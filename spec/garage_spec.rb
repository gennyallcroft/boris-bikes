require 'garage.rb'
describe Garage do
  it { is_expected.to respond_to :accept_broken_bikes }
  it { is_expected.to respond_to :get_fixed_bikes }
  it 'accept broken bikes' do
    van = Van.new
    bike = Bike.new(true)
    expect(subject.accept_broken_bikes([bike])).to eq 1
    subject.fix_bike(bike)
    expect(subject.get_fixed_bikes.length).to eq 1
  end
end
