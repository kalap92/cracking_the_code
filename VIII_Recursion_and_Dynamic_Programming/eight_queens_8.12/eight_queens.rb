GRID_SIZE = 8

def place_queens(row, columns, results)
  if row == GRID_SIZE
    results.push(columns.dup)
  else
    for col in 0..GRID_SIZE-1
      if check_queen_position(columns, row, col)
        columns[row] = col 
        place_queens(row + 1, columns, results)
      end
    end
  end
end

def same_diagonals(col1, col2, row1, row2)
  (col1 - col2).abs == (row1 - row2).abs
end

def check_queen_position(columns, row1, column1)
  for row2 in 0..row1-1
    column2 = columns[row2]
    return false if column1 == column2
    return false if same_diagonals(column1, column2, row1, row2)
  end
  true
end
