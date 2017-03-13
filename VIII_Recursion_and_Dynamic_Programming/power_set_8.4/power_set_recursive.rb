def power_set_recursive(set, outcome, subset, n, k)
  if k > n
    outcome.push(subset)
  else
    power_set_recursive(set, outcome, subset + [set[k]], n, k+1)
    power_set_recursive(set, outcome, subset, n, k+1)
  end
end
