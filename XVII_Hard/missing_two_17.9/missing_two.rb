def missing_two(input, n)
  real_sum = 0
  real_squares_sum = 0

  sum = (1+n)*n/2
  squares_sum = n*(n+1)*(2*n+1)/6

  input.each do |ele|
    real_sum += ele
    real_squares_sum += ele*ele
  end
  sum_diff = sum - real_sum
  squares_diff = squares_sum - real_squares_sum
  quadratic_equation(squares_diff, sum_diff)
end

def quadratic_equation(squares_diff, sum_diff)
  # xy = a
  # x + y = b
  #
  a = (sum_diff*sum_diff-squares_diff)/2
  b = sum_diff

  # x = b - y
  # y*b - y^2 -a = 0
  # y^2 -by + a = 0
  #
  delta_sqrt = Math.sqrt(b*b - 4*a)
  [(b-delta_sqrt)/2, (b+delta_sqrt)/2]
end
