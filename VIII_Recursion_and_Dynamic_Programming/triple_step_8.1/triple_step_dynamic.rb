def triple_step_dynamic(n)
  memo = []
  for i in 0..n
    memo[i] = -1
  end
  triple_step(n, memo)
end

def triple_step(n, memo)
  if n < 0
    return 0
  elsif memo[n] > -1
    return memo[n]
  elsif n == 0
    return 1
  else
    memo[n] = triple_step(n-1, memo) + 
      triple_step(n-2, memo) + 
      triple_step(n-3, memo)
    return memo[n]
  end
end
