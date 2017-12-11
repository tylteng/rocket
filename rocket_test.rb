require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @r = Rocket.new(options = {})
  end

  def test_new_name
    expected = "Tyler"
    actual = @r.name=("Tyler")

    assert_equal(expected, actual)
  end

  def test_new_color
    expected = "Red"
    actual = @r.colour=("Red")

    assert_equal(expected, actual)
  end

  def test_lift_off_false
    r = Rocket.new(flying: true)
    expected = false
    actual = r.lift_off

    assert_equal(expected, actual)
  end

  def test_lift_off_true
    expected = true
    actual = @r.lift_off

    assert_equal(expected, actual)
  end

  def test_land_false
    expected = false
    actual = @r.land

    assert_equal(expected, actual)
  end

  def test_land_true
    @r.lift_off
    expected = true
    actual = @r.land

    assert_equal(expected, actual)
  end
end
