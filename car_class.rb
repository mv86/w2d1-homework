class Car

  attr_reader(:make, :fuel_level, :speed, :engine)

  def initialize(make, engine)
    @make = make
    @fuel_level = 100
    @speed = 0
    @engine = engine
  end

  def car_accelerate
    case @engine.engine_type
    when "Turbo"
      @fuel_level -= 10
      @speed += 25
    when "Old"
      @fuel_level -= 10
      @speed += 5
    when "Normal"
      @fuel_level -= 5
      @speed += 10
    end
  end

  def car_break
    if @speed > 0
      @speed -= 10
    end
  end



end