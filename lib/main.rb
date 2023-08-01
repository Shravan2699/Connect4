require_relative './player'
require_relative './board'

def my_game
    my_board = Board.new
    my_board.display_board
    my_player = Player.new('Sam','X')
    computer = Computer.new
    game_over = false
    while game_over != true
        my_player.player_move(my_board.board1)
        computer.computer_move(my_board.board1)
        my_board.display_board
        p my_board.board1
    end
end

my_game()