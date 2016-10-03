class Car

  attr_reader :make, :fuel_level, :speed

  def initialize(make, fuel_level, speed)
    @make = make
    @fuel_level = fuel_level
    @speed = speed
  end

  def car_accelerate
    @fuel_level -= 5
    @speed += 10
  end

  def car_break
    if @speed > 0
      @speed -= 10
    end
  end

  

end