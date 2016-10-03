require('minitest/autorun')
require('minitest/rg')
require_relative('../engine_class')

class TestEngineClass < MiniTest::Test

  def test_turbo_engine_accelerate
    @janes_car.turbo_engine_accelerate
    (assert_equal(90, @janes_car.fuel_level))
    (assert_equal(25, @janes_car.speed))
  end

  def test_old_engine_accelerate
    @tims_car.old_engine_accelerate
    (assert_equal(75, @tims_car.fuel_level))
    (assert_equal(65, @tims_car.speed))
  end















end