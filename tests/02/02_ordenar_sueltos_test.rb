require "test_helper"
require "02/02_ordenar_sueltos"

class OrdenarTest < Minitest::Test
  def test_ordenar_normal
    assert_equal [1,2,3], ordenar(3,1,2)
  end

  def test_ordenar_vacio
    assert_equal [], ordenar()
  end
end