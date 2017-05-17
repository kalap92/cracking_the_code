require_relative 'kth_multiple'
require 'test/unit'
require 'pry'
 
class KthMultipleTest < Test::Unit::TestCase
  def prime_factors_3_5_7(number)
    return prime_factors_3_5_7(number/3) if number % 3 == 0
    return prime_factors_3_5_7(number/5) if number % 5 == 0
    return prime_factors_3_5_7(number/7) if number % 7 == 0
    number == 1
  end

  def manual_kth_multiple(k)
    output = []
    output << 1
    i = 3

    while output.size != k
      output << i if prime_factors_3_5_7(i)
      i += 1
    end
    output.last
  end

  def test_kth_multiple
    assert_equal(manual_kth_multiple(6), kth_multiple(6))
    assert_equal(manual_kth_multiple(12), kth_multiple(12))
    assert_equal(manual_kth_multiple(20), kth_multiple(20))
    assert_equal(manual_kth_multiple(90), kth_multiple(90))
  end
end
