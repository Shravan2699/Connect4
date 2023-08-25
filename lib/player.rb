class Player
    attr_accessor :name,:marker

    def initialize(name,marker)
        @name = name
        @marker = marker
    end

    def player_move(board)
        puts "#{@name}, Which column would you like to drop your pin? (1-7 or 'q' to quit)"

        loop do
            input = gets.chomp
            
            
            if input.downcase == 'q'
                puts "Exiting the game. Goodbye!!"
                exit(0)
            end

            pos = input.to_i
        
            if pos >=1 && pos <= 7
                row = board.length - 1
                while row >= 0
                    if board[row][pos - 1] == ' '
                        board[row][pos - 1] = @marker
                        player_coordinates = [row + 1,pos]
                        puts "Last player move coordinate is #{player_coordinates}"
                        return true
                    end
                    row -= 1
                end
            else
                puts "Invalid input. Please enter a number between 1 and 7 or 'q' to quit."
            end
        end
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
                board[row][pos - 1] = 0
                computer_coordinates = [row+1,pos]
                puts "Last computer move coordinate is  #{computer_coordinates}"
                return true
            end
            row -= 1
        end
        return false
    end
end
