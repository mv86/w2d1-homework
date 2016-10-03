class Engine

  attr_reader(:speed_increase, :fuel_depleted)

  def initialize(fuel_depleted, speed_increase)
    @speed_increase = speed_increase
    @fuel_depleted = fuel_depleted
  end

  # def normal_engine_accelerate
  #   @fuel_depleted -= 5
  #   @speed_increase += 10
  # end

  # def turbo_engine_accelerate
  #   @fuel_depleted -= 10
  #   @speed_increase += 25
  # end

  # def old_engine_accelerate
  #   @fuel_depleted -= 10
  #   @speed_increase += 5
  # end




end