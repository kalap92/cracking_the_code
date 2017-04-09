def living_people(years)
  data = {}

  years.each do |ele|
    data[ele[:start]] = true
    data[ele[:end]] = false
  end

  data = data.sort

  max_year = 0
  max = 0
  counter = 0

  data.each do |k, v|
    if v
      counter += 1
      if counter > max
        max = counter
        max_year = k
      end
    else
      counter -= 1
    end
  end
  max_year
end
