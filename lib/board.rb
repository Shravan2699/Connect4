


class Board
    attr_accessor :rows, :columns
    def initialize
        @rows = 6
        @columns = 7
        @board1 = Array.new(rows) { Array.new(columns, ' ') }
    end

    def display_board
        @board1.each do |row|
            puts row.join(' | ')
            puts '-' * (row.length * 4- 1) # Separator line between rows
        end
    end
end

  
  
  
my_board = Board.new
my_board.display_board  