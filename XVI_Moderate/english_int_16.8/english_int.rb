$integers = {
  1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six',
  7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
  19 => 'nineteen', 20 => 'twenty', 30 => 'thirty', 40 => 'fourty',
  50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty',
  90 => 'ninety'
}

def english_int(number)
  millions = number / 1000000
  number -= millions * 1000000

  thousands = number / 1000
  number -= thousands * 1000

  hundreds = number / 100
  number -= hundreds * 100

  tens = number / 10
  number -= tens * 10

  last = ''
  if tens == 1
    last = $integers[10+number]
  else
    last = $integers[number]
  end

  out = ''
  out += "#{$integers[millions]} million " unless millions == 0
  out += "#{english_int(thousands)} thousand " unless thousands == 0
  out += "#{$integers[hundreds]} hundred " unless hundreds == 0
  out += "#{$integers[tens*10]} " unless tens == 0 || tens == 1
  out += "#{last}" unless last == 0
end
