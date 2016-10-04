require('minitest/autorun')
require('minitest/rg')
require_relative('../engine_class')

class TestEngineClass < MiniTest::Test

  def setup
    @turbo_engine = Engine.new('Turbo')
    @old_engine = Engine.new('Old')
    @normal_engine = Engine.new('Normal')
  end

  def test_type_of_engine
    assert_equal('Turbo', @turbo_engine.engine_type)
  end


end