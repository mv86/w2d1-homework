require('minitest/autorun')
require('minitest/rg')
require_relative('../car_class')
require_relative('../engine_class')

class TestCarClass < MiniTest::Test

  def setup
    @bobs_car = Car.new("Ford", @fuel_level, @speed, @normal_engine)
    @janes_car = Car.new("Ferrari", @fuel_level, @speed, @turbo_engine)
    @maxs_car = Car.new("Mercedes", @fuel_level, @speed, @turbo_engine)
    @tims_car = Car.new("BMW", @fuel_level, @speed, @old_engine)
    @turbo_engine = Engine.new('Turbo')
    @old_engine = Engine.new('Old')
    @normal_engine = Engine.new('Normal')
  end 

  def test_car_fuel_level
    assert_equal(100, @bobs_car.fuel_level)
  end

  def test_car_is_stationary
    assert_equal(0, @janes_car.speed)
  end

  def test_make_of_car
    assert_equal("Mercedes", @maxs_car.make)
  end

  def test_engine_on_car
    assert_equal('Old', @tims_car.engine_type)
  end

  def test_car_acceleratation__turbo
    @maxs_car.car_accelerate
    assert_equal(90, @maxs_car.fuel_level)
    assert_equal(25, @maxs_car.speed)
  end

  def test_car_acceleration__old
    @tims_car.car_accelerate
    assert_equal(90, @tims_car.fuel_level)
    assert_equal(5, @tims_car.speed)
  end

  def test_car_acceleration__normal
    @bobs_car.car_accelerate
    assert_equal(95, @bobs_car.fuel_level)
    assert_equal(10, @bobs_car.speed)
  end

  # def test_car_break__car_moving #NEEDS CHANGING
  #   @tims_car.car_accelerate
  #   @tims_car.car_accelerate
  #   @tims_car.car_break
  #   assert_equal(50, @tims_car.speed)
  # end

  # def test_car_break__car_still
  #   assert_equal(100, @bobs_car.fuel_level)
  #   assert_equal(0, @bobs_car.speed)
  # end



end