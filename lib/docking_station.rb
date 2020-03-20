require_relative 'bike'

class DockingStation
  attr_reader :bike
  def initialize
      @bikes = []
  end

  def release_bike
    if empty?
      raise "No bikes available"
    else
      Bike.new
    end
  end

  def dock(bike)
    if full?
      raise "Docking Station full"
    else
      @bikes << bike
      bike
    end
  end

  private

  def empty?
    if @bikes.count == 0
      true
    else
      false
    end
  end

  def full?
    if @bikes.count > 19
      true
    else
      false
    end
  end

end