require 'bike'

describe Bike do
    it { is_expected.to respond_to :working?}
    it 'is working' do
      expect(subject.working?).to be true
    end

    it { is_expected.to respond_to :report_broken}

end
