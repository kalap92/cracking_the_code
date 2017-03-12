def steps_memoization(n)
  memo = []
  for i in 0..n+1
    memo[i] = -1
  end
  steps(n, memo)
end

def steps(n, memo)
  if n < 0
    return 0
  elsif n == 0
    return 1
  elsif memo[n] > -1
    return memo[n]
  else
    memo[n] = steps(n-1, memo) + steps(n-2, memo) + steps(n-3, memo)
    return memo[n]
  end
end

puts steps_memoization(30)
