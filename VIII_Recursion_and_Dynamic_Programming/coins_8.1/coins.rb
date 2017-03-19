def coins(cents)
  if cents == 0
    return 1
  elsif cents < 0
    return 0
  else
    return coins(cents - 1) +
    coins(cents - 5) +
    coins(cents - 10) +
    coins(cents - 25)
  end
end
