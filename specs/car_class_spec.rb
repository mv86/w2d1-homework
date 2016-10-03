require('minitest/autorun')
require('minitest/rg')
require_relative('../car_class')

class TestCarClass < MiniTest::Test

  def setup
    @bobs_car = Car.new("Ford", 100, 0)
    @janes_car = Car.new("Ferrari", 100, 0, @turbo_engine)
    @maxs_car = Car.new("Mercedes", 100, 0, @turbo_engine)
    @tims_car = Car.new("BMW", 85, 60, @old_engine)
    @turbo_engine = Engine.new(-10, +25)
    @old_engine = Engine.new(-10, +5)
    @normal_engine = Engine.new(-5, +10)
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

  def test_car_accelerate
    @maxs_car.car_accelerate
    assert_equal(95, @maxs_car.fuel_level)
    assert_equal(10, @maxs_car.speed)
  end

  def test_car_break__car_still
    assert_equal(100, @bobs_car.fuel_level)
    assert_equal(0, @bobs_car.speed)
  end

  def test_car_break__car_moving
    @tims_car.car_break
    assert_equal(50, @tims_car.speed)
  end



end