require_relative 'circus_tower'
require 'test/unit'
require 'pry'
 
class CirrusTowerTest < Test::Unit::TestCase
  def test_cirrus_tower
    athletes = [
      { weight: 81, height: 168 },
      { weight: 82, height: 171 },
      { weight: 83, height: 170 },
      { weight: 84, height: 163 },
      { weight: 85, height: 164 },
      { weight: 86, height: 165 },
      { weight: 87, height: 171 }
    ]

    output = [
      { weight: 84, height: 163 },
      { weight: 85, height: 164 },
      { weight: 86, height: 165 },
      { weight: 87, height: 171 }
    ]

    assert_equal(output, cirrus_tower(athletes))

    athletes = [
      { weight: 82, height: 190 },
      { weight: 83, height: 163 },
      { weight: 84, height: 180 },
      { weight: 81, height: 160 },
      { weight: 86, height: 191 },
      { weight: 88, height: 166 },
      { weight: 85, height: 164 },
      { weight: 87, height: 165 }
    ]

    output = [
      { weight: 81, height: 160 },
      { weight: 83, height: 163 },
      { weight: 85, height: 164 },
      { weight: 87, height: 165 },
      { weight: 88, height: 166 }
    ]

    assert_equal(output, cirrus_tower(athletes))
  end
end
