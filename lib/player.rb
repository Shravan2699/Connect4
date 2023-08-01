class Player
    attr_accessor :name,:marker

    def initialize(name,marker)
        @name = name
        @marker = marker
    end

    def player_move(board)
        puts "#{@name},Which column would you like to drop your pin?"
        pos = gets.chomp.to_i
        row = board.length - 1
        while row >= 0
          if board[row][pos - 1] == ' '
            board[row][pos - 1] = @marker
            return true
          end
          row -= 1
        end
     return false
    end
end


class Computer
    attr_accessor :choices

    def initialize
        @choices = (1..7).to_a
    end


    def computer_move(board)
        pos = @choices.sample
        row = board.length - 1
        while row >= 0
            if board[row][pos - 1] == ' '
                board[row][pos - 1] = 'O'
                return true
            end
            row -= 1
        end
        return false
    end
end
