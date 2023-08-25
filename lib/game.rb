
def check_horizontal(board)
  rows = board.length
  columns = board[0].length
  horizontal = []

  (0..rows -1 ).each do |row|
      (0..columns-4).each do |column|
        if board[row][column] != ' ' &&
          board[row][column] == board[row][column+1] &&
          board[row][column] == board[row][column+2] &&
          board[row][column] == board[row][column+3]
            return board[row][column]
        end
    end
  end
return false
end


def check_vertical(board)
  rows = board.length
  columns = board[0].length

  (0..rows-4).each do |row|
    (0..columns - 1).each do |column|
      if board[row][column] != ' ' &&
        board[row][column] == board[row+1][column] &&
        board[row][column] == board[row+2][column] &&
        board[row][column] == board[row+3][column]
          # puts "Vertical met"
          return board[row][column]
      end
    end
  end
return false
end


def check_diagonal1(board)
  rows = board.length
  columns = board[0].length

  (0..rows - 4).each do |row|
    (0..columns - 4).each do |column|
      if board[row][column] != ' ' && 
        board[row][column] == board[row+1][column+1] &&
        board[row][column] == board[row+2][column+2] &&
        board[row][column] == board[row+3][column+3]
          return board[row][column]
      end
    end
  end
 return false
end

def check_diagonal2(board)
  rows = board.length
  columns = board[0].length

  (3..rows - 1).each do |row|
    (0..columns - 4).each do |column|
      if board[row][column] != ' ' &&
        board[row][column] == board[row-1][column+1] &&
        board[row][column] == board[row-2][column+2] &&
        board[row][column] == board[row-3][column+3]
          return board[row][column]
      end
    end
  end
  return false
end



def check_winner(board)
  result_arr = []
  result_arr.push(check_horizontal(board))
  result_arr.push(check_vertical(board))
  result_arr.push(check_diagonal1(board))
  result_arr.push(check_diagonal2(board))

  return result_arr
end

# p check_winner(arr)