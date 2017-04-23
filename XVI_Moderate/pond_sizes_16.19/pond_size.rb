def ponds_size(pond, height, width)
  sizes = []
  for x in 0..height-1
    for y in 0..width-1
      sizes << count_pond_size(pond, x, y, height, width) if pond[x][y] == 0
    end
  end
  sizes.sort
end

def in_bounds(x, y, width, height)
  x >= 0 && y >= 0 && x < width && y < height
end

def count_pond_size(pond, x, y, height, width)
  return 0 if !in_bounds(x, y, height, width) || pond[x][y] != 0
  pond[x][y] = -1

  return 1 + 
   count_pond_size(pond, x+1, y, height, width) +
   count_pond_size(pond, x-1, y, height, width) +
   count_pond_size(pond, x, y+1, height, width) +
   count_pond_size(pond, x, y-1, height, width) +
   count_pond_size(pond, x+1, y+1, height, width) +
   count_pond_size(pond, x-1, y-1, height, width) +
   count_pond_size(pond, x-1, y+1, height, width) +
   count_pond_size(pond, x+1, y-1, height, width)
end
