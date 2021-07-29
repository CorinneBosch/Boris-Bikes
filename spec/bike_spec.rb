require 'bike.rb'

describe Bike do
  it { expect(Bike.new.working?).to eq true}
end
