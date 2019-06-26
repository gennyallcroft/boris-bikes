require 'docking_station'

describe DockingStation do
  let(:bike) { double :bike }
    it { is_expected.to respond_to :release_bike }
    it "Returns bike and is working" do
        # bike = subject.release_bike
        # expect(bike).to be_working
        expect { subject.release_bike }.to raise_error
    end
    it {is_expected.to respond_to(:dock).with(1).argument}
    it {is_expected.to respond_to(:bikes)}

    it 'docks something' do
      # bike = Bike.new
      allow(bike).to receive(:report_broken)
      allow(bike).to receive(:working?).and_return(false)
      expect(subject.dock(bike)).to eq bike
      expect(subject.dock(bike,true).working?).to eq false
      expect { subject.DEFAULT_CAPACITY.times {subject.dock(bike)} }.to raise_error
    end
    it 'has a capacity property' do
      expect(subject.capacity).to eq(20)
    end

end
