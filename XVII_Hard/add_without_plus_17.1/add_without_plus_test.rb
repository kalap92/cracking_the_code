require_relative 'add_without_plus'
require 'test/unit'
require 'pry'
 
class AddWithoutPlusTest < Test::Unit::TestCase
  def test_add_without_plus
    a = 13
    b = 11
    assert_equal(a+b, add_without_plus(a, b))

    a = 8
    b = 2
    assert_equal(a+b, add_without_plus(a, b))

    a = 12
    b = 1
    assert_equal(a+b, add_without_plus(a, b))

    a = 5
    b = 1
    assert_equal(a+b, add_without_plus(a, b))

    a = 124
    b = 321
    assert_equal(a+b, add_without_plus(a, b))

    a = 432165413
    b = 5441262
    assert_equal(a+b, add_without_plus(a, b))
  end
end
