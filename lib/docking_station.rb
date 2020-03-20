require_relative 'bike'

class DockingStation

  def initialize
      @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock(bike)
    if @bikes.count == 20
      raise "Docking Station full"
    else
      @bikes << bike
      bike
    end
  end

  attr_reader :bike
  
end