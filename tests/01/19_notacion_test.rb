require "test_helper"
require "01/19_notacion"

class NotacionTest < Minitest::Test
  def test_rgb_to_integer
    assert_equal 16744448, notacion_entera([0,128,255])
  end

  def test_rgb_to_hexa
    assert_equal "#0080FF", notacion_hexadecimal([0,128,255])
  end
end