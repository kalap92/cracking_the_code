def normalize(number)
  a = []
  number.to_s(2).each_char { |c| a << c.to_i }
  a.reduce(:|) 
end

def max_number(a, b)
  c = a / b
  d = b / a
  c_rest = a % b
  d_rest = b % a
  
  x = c_rest + d_rest
  c * b + d * a + normalize(c) * c_rest + normalize(d) * d_rest
end
