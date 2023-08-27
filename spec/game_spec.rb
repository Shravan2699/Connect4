require_relative '../lib/game'

describe 'check_winner' do
    
    before do
        @rows = 6
        @columns = 7
    end

      
    it 'should return an array of boolean when a board is passed as arguments' do
        my_board =  Array.new(@rows) { Array.new(@columns, ' ') }

        result = check_winner(my_board)

        expect(result).to eq(Array.new(4,false))
    end

    it 'should return the first value as 1 implying that the horizontal condition is met' do
        my_board =  Array.new(@rows) { Array.new(@columns, ' ') }

        my_board[0][0] = 1
        my_board[0][1] = 1
        my_board[0][2] = 1
        my_board[0][3] = 1

        result = check_winner(my_board)

        expect(result).to eq([1,false,false,false])
    end

    it 'should return the second value as 0 implying that the vertical condition is met' do
        my_board =  Array.new(@rows) { Array.new(@columns, ' ') }

        my_board[0][3] = 0
        my_board[1][3] = 0
        my_board[2][3] = 0
        my_board[3][3] = 0

        result = check_winner(my_board)

        expect(result).to eq([false,0,false,false])
    end

    it 'should return the 3rd value in the array as 1,which implies diagonal 1 condition is being met' do
        my_board =  Array.new(@rows) { Array.new(@columns, ' ') }

        my_board[0][0] = 1
        my_board[1][1] = 1
        my_board[2][2] = 1
        my_board[3][3] = 1

        result = check_winner(my_board)

        expect(result).to eq([false,false,1,false])
    end

    it 'should return the 4th value in the array as 1,which implies diagonal 1 condition is being met' do
        my_board =  Array.new(@rows) { Array.new(@columns, ' ') }

        my_board[5][0] = 0
        my_board[4][1] = 0
        my_board[3][2] = 0
        my_board[2][3] = 0

        result = check_winner(my_board)

        expect(result).to eq([false,false,false,0])
    end

end



