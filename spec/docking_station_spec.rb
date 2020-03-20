require 'docking_station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bikes' do
      subject.dock(Bike.new)
      expect(subject.release_bike).to be_working
    end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it 'Will not release a bike if it is empty' do
      expect { DockingStation.new.release_bike }.to raise_error "No bikes available"
    end

    it 'will not let me dock two bikes' do
      station = DockingStation.new
      station.dock(Bike.new)
      expect { station.dock(Bike.new) }.to raise_error "Docking Station full"
    end

  end
