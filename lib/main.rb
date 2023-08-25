require_relative './player'
require_relative './board'
require_relative './game'


def my_game
    my_board = Board.new
    text = "CONNECT 4"
    text_centered = text.center(50)
    puts text_centered
    puts "Connect Four is a two-player game where you try to connect four of your colored\ndiscs in a row, column, or diagonal on a grid by taking turns dropping discs\ninto one of seven columns. The first to do so wins."
    puts "Lets Play!!!"
    puts "\nPlayer 1, Please enter your name..."
    player_name = gets.chomp
    my_board.display_board
    my_player = Player.new(player_name, 1)
    computer = Computer.new
    game_over = false
    
    while game_over != true
        my_player.player_move(my_board.board1)
        my_board.display_board
        if check_winner(my_board.board1).include?(1)
            puts "Congratulations #{my_player.name}!"
            puts "You won!!"
            game_over = true
            break
        end
        
        computer.computer_move(my_board.board1)
        my_board.display_board
        if check_winner(my_board.board1).include?(0)
            puts "Uh oh!Better luck next time!"
            puts "Computer wins!"
            game_over = true
            break
        end
    end
end


def game_start
    loop do
        system "clear"
        my_game
        puts "Would you like to play again? Press 'Y' for yes and any other key for no"
        play_again = gets.chomp.downcase
        break if play_again != 'y'
    end
end


game_start()