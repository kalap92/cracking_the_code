require_relative 'living_people'
require 'test/unit'
require 'pry'
 
class LivingPeopleTest < Test::Unit::TestCase
  def test_living_people
    years = [
      { start: 1908, end: 1990 },
      { start: 1910, end: 1960 },
      { start: 1901, end: 1907 },
      { start: 1905, end: 1953 },
      { start: 1939, end: 2000 },
      { start: 1922, end: 1938 },
      { start: 1957, end: 1999 },
      { start: 1900, end: 1956 }
    ]
    assert_equal(1922, living_people(years))
  end
end
