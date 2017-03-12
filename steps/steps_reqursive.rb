def steps(n)
  if n == 0
    return 1
  elsif n < 0
    return 0
  else
    return steps(n-1) + steps(n-2) + steps(n-3)
  end
end

puts steps(30)
