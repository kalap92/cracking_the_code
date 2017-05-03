def pad_zeros(length, binary_number)
  while binary_number.length != length
    binary_number = '0' + binary_number
  end
  binary_number
end

def add_without_plus(a, b)
  binary_a = a.to_s(2)
  binary_b = b.to_s(2)

  length = binary_a.length > binary_b.length ? binary_a.length : binary_b.length
  binary_a = pad_zeros(length, binary_a)
  binary_b = pad_zeros(length, binary_b)

  i = length-1
  carry = 0
  output = ''

  while i >= 0
    bit_a = binary_a[i].to_i
    bit_b = binary_b[i].to_i
    
    sum = bit_a ^ bit_b
    sum = sum ^ carry
    carry = (bit_a & carry & ~bit_b) |
            (bit_b & carry & ~bit_a) |
            (bit_a & bit_b)

    output = sum.to_s + output

    i -= 1
  end
  output = carry.to_s + output
  output.to_i(2)
end
