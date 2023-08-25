class Board
    attr_accessor :rows, :columns, :board1
    def initialize
        @rows = 6
        @columns = 7
        @board1 = Array.new(rows) { Array.new(columns, ' ') }
        # @board1[7] = [1,2,3,4,5,6,7]
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
end

