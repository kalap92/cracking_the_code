def triple_step_recursive(n)
  if n == 0
    return 1
  elsif n < 0
    return 0
  else
    return triple_step_recursive(n-1) + 
      triple_step_recursive(n-2) + 
      triple_step_recursive(n-3)
  end
end
