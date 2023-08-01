


class Board
    attr_accessor :rows, :columns, :board1
    def initialize
        @rows = 6
        @columns = 7
        @board1 = Array.new(rows) { Array.new(columns, ' ') }
    end

    def get_rows_count
        @rows
    end
    
      # Add a method to get the number of columns in the board
    def get_columns_count
        @columns
    end

    def display_board
        @board1.each do |row|
            puts row.join(' | ')
            puts '-' * (row.length * 4- 1) # Separator line between rows
        end
    end

    def check_for_wins(grid,pos_x,pos_y)
        
end


# my_board = Board.new
# my_board.display_board 

# Initially we have rows = 6 and columns = 7
# When we transpose,we get rows = 7 and columns = 6

# In a graph,when we start from (0,0),if we want to get to the first quadrant we push (+1,+1)
# Second quadrant we push (-1,+1)
# Third Quandrant we push (-1,-1)
# Fourth Quadrant we push (+1,-1)

# rows = 6
# columns = 7
# arr = Array.new(rows) { Array.new(columns, ' ') }
# pattern1 = Array.new(4,'X')

# arr[3][3] = 'X'

def generate_arrays(pos)
    rows = 6
    columns = 7
    arr = Array.new(rows) { Array.new(columns, ' ') }
    arr[0][0] = 'X'
    p arr
    first_quadrant = []
    second_quadrant = []
    third_quadrant = []
    fourth_quadrant = []
    horizontal_row = []
    vertical_column = []
  
    current_pos = [pos[0], pos[1]]
  
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < arr.length && current_pos[1] < arr.length)
      first_quadrant << arr[current_pos[0]][current_pos[1]]
      current_pos[0] -= 1
      current_pos[1] += 1
    end
  
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < arr.length && current_pos[1] < arr.length)
      second_quadrant << arr[current_pos[0]][current_pos[1]]
      current_pos[0] -= 1
      current_pos[1] -= 1
    end
  
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < arr.length && current_pos[1] < arr.length)
      third_quadrant << arr[current_pos[0]][current_pos[1]]
      current_pos[0] += 1
      current_pos[1] -= 1
    end
  
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < arr.length && current_pos[1] < arr.length)
      fourth_quadrant << arr[current_pos[0]][current_pos[1]]
      current_pos[0] += 1
      current_pos[1] += 1
    end
  
    current_pos = [pos[0],0]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] <= arr.length && current_pos[1] <= arr.length)
      horizontal_row << arr[current_pos[0]][current_pos[1]]
      current_pos[1] += 1
    end
  
    current_pos = [0,pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < arr.length && current_pos[1] <= arr.length)
      vertical_column << arr[current_pos[0]][current_pos[1]]
      current_pos[0] += 1
    end
  
    # p vertical_column
    
    all_arrays = []
    all_arrays.push(first_quadrant)
    all_arrays.push(second_quadrant)
    all_arrays.push(third_quadrant)
    all_arrays.push(fourth_quadrant)
    all_arrays.push(horizontal_row)
    all_arrays.push(vertical_column)
  
    all_arrays
  end
  
  p generate_arrays([3, 3])
  
  # new_arr = arr.transpose
  # p arr
  
  # arr.each_with_index do |num,idx|
  #   p num,idx
  # end
  
  # new_arr.each_with_index do |num,idx|
  #   num.each_cons(pattern1.length) do |group|
  #     if group == pattern1
  #       puts "Pattern exists in the array!"
  #        puts "This is Array: #{idx}"
  #       break
  #     end
  #   end
  # end
  
  # Pretty simple from here on now,just need to find the coordinates of the last piece placed
  