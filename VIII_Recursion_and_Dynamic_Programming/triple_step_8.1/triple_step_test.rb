require_relative 'triple_step_recursive'
require_relative 'triple_step_dynamic'
require 'test/unit'
require 'pry'
 
class TripleStepTest < Test::Unit::TestCase
  def test_triple_step_recursive
    assert_equal(4, triple_step_recursive(3))
    assert_equal(7, triple_step_recursive(4))
    assert_equal(13, triple_step_recursive(5))
  end

  def test_triple_step_dynamic
    assert_equal(4, triple_step_dynamic(3))
    assert_equal(7, triple_step_dynamic(4))
    assert_equal(13, triple_step_dynamic(5))
  end
end
