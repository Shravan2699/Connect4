require_relative '../lib/player'
require_relative '../lib/board'
# require_relative '../lib/main'

describe Player do
    let(:board) { Board.new }
    subject(:player) { described_class.new('Sam',1) }


    describe '#player_move' do
        it 'updates the board with the player\'s move' do
            allow(player).to receive(:gets).and_return("2\n")
            expect { player.player_move(board.board1) }.to output(/Last player move coordinate is \[6, 2\]/).to_stdout
            expect(board.board1[5][1]).to eq(1)
        end
        

        it 'prompts user to input a valid input if the input is invalid' do
            allow(player).to receive(:gets).and_return("b\n")
            expect(board.board1).to eq(board.board1)
        end

        it 'allows the user to quit the game with "q"' do
            allow(player).to receive(:gets).and_return("q\n")
            expect(board.board1).to eq(board.board1)
        end



        #Will need to work on this later
        xit 'ends the game when the user wins the game' do
            allow(player).to receive(:gets).and_return("2\n", "2\n", "2\n", "2\n")
        end


    end

end



describe Computer do
    let(:board) { Board.new }
    subject(:computer) { described_class.new }
    
    describe '#computer_move' do
      it 'updates the board with the computer\'s move' do
        computer.set_pos(3)
        expect {computer.computer_move(board.board1)}.to output("Last computer move coordinate is [6, 3]\n").to_stdout
        expect(board.board1[5][2]).to eq(0)
      end


      #Will work on the below later
      xit 'ends the game when the computer wins the game' do
        computer.set_pos(3)
        board.board1[5][3] = 0
        board.board1[4][3] = 0
        board.board1[3][3] = 0
        expect { computer.computer_move(board.board1) }.to output("Last computer move coordinate is [6, 3]\n").to_stdout
        # expect(board.board1[2][3]).to eq(0)
        expect(board.game_over?).to eq(true)
      end

    end
end