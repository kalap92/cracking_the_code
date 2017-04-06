require_relative 'english_int'
require 'test/unit'
require 'pry'
 
class EnglishIntTest < Test::Unit::TestCase
  def test_english_int
    a = 3951652
    output = 'three million nine hundred fifty one thousand six hundred fifty two'
    assert_equal(output, english_int(a))

    a = 3951612
    output = 'three million nine hundred fifty one thousand six hundred twelve'
    assert_equal(output, english_int(a))

    a = 951612
    output = 'nine hundred fifty one thousand six hundred twelve'
    assert_equal(output, english_int(a))

    a = 3051612
    output = 'three million fifty one thousand six hundred twelve'
    assert_equal(output, english_int(a))

    a = 3001612
    output = 'three million one thousand six hundred twelve'
    assert_equal(output, english_int(a))

    a = 3000612
    output = 'three million six hundred twelve'
    assert_equal(output, english_int(a))

    a = 3000012
    output = 'three million twelve'
    assert_equal(output, english_int(a))

    a = 3000002
    output = 'three million two'
    assert_equal(output, english_int(a))

    a = 302
    output = 'three hundred two'
    assert_equal(output, english_int(a))

    a = 52
    output = 'fifty two'
    assert_equal(output, english_int(a))
  end
end
