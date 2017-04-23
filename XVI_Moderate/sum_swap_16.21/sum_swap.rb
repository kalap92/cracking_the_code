def sum_swap(a, b)
  a_sum = a.reduce(:+)
  b_sum = b.reduce(:+)

  a_hash = {}

  b.each do |b_value|
    a_value = (a_sum - b_sum)/2 + b_value
    a_hash[a_value] = b_value
    a_hash[a_value] = nil if (a_sum - b_sum).odd?
  end

  a.each do |a_value|
    return [a_value, a_hash[a_value]] if a_hash[a_value]
  end
end
