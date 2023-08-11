

def check_winner(board,current_pos)
    first_quadrant = []
    second_quadrant = []
    third_quadrant = []
    fourth_quadrant = []
    horizontal_row = []
    vertical_column = []


    #First_Quadrant
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < board.length && current_pos[1] < board.length)
        first_quadrant << board[current_pos[0]][current_pos[1]]
        current_pos[0] -= 1
        current_pos[1] += 1
    end

    #Second_Quadrant
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < board.length && current_pos[1] < board.length)
        second_quadrant << board[current_pos[0]][current_pos[1]]
        current_pos[0] -= 1
        current_pos[1] -= 1
    end

    #Third_Quadrant
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < board.length && current_pos[1] < board.length)
        third_quadrant << board[current_pos[0]][current_pos[1]]
        current_pos[0] += 1
        current_pos[1] -= 1
    end

    #Fourth_Quadrant
    current_pos = [pos[0], pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < board.length && current_pos[1] < board.length)
        fourth_quadrant << board[current_pos[0]][current_pos[1]]
        current_pos[0] += 1
        current_pos[1] += 1
    end

    #Horizontal axis
    current_pos = [pos[0],0]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] <= board.length && current_pos[1] <= board.length)
        horizontal_row << board[current_pos[0]][current_pos[1]]
        current_pos[1] += 1
    end

    #Vertical axis
    current_pos = [0,pos[1]]
    while (current_pos[0] >= 0 && current_pos[1] >= 0) && (current_pos[0] < board.length && current_pos[1] <= board.length)
        vertical_column << board[current_pos[0]][current_pos[1]]
        current_pos[0] += 1
    end

    # p vertical_column

    all_boardays = []
    all_boardays.push(first_quadrant)
    all_boardays.push(second_quadrant)
    all_boardays.push(third_quadrant)
    all_boardays.push(fourth_quadrant)
    all_boardays.push(horizontal_row)
    all_boardays.push(vertical_column)

    all_boardays
end

p check_winner([3, 3])

# new_board = board.transpose
# p board

# board.each_with_index do |num,idx|
#   p num,idx
# end

# new_board.each_with_index do |num,idx|
#   num.each_cons(pattern1.length) do |group|
#     if group == pattern1
#       puts "Pattern exists in the boarday!"
#        puts "This is boarday: #{idx}"
#       break
#     end
#   end
# end

# Pretty simple from here on now,just need to find the coordinates of the last piece placed
