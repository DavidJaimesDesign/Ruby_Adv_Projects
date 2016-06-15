class Board 
	def initialize
		#put board variable here
		@board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
	end

	def display_board
		#puts the board with current moves on it 
	end

	def victory_conditions(board)
		case victory
		when board[1] || board[2] || board[3] == ["X","X","X"] 
			end_of_game(player1)
			return true
		when board[1] || board[2] || board[3] == ["O","O","O"]
			end_of_game(player2)
			return true 
		when board[0[0]] && board[1[0]] && board[2[0]] == "X"
			end_of_game(player1)
			return true
		when board[0[1]] && board[1[1]] && board[2[1]] == "X"
			end_of_game(player1)
			return true
		when board[0[2]] && board[1[2]] && board[2[2]] == "X"
			end_of_game(player1)
			return true
		when board[0[0]] && board[1[0]] && board[2[0]] == "O"
			end_of_game(player2)
			return true
		when board[0[1]] && board[1[1]] && board[2[1]] == "O"
			end_of_game(player2)
			return true
		when board[0[2]] && board[1[2]] && board[2[2]] == "O"
			end_of_game(player2)
			return true
		when board[0[0]] && board[1[1]] && board[2[2]] == "X"
			end_of_game(player1)
			return true
		when board[0[0]] && board[1[1]] && board[2[2]] == "O"
			end_of_game(player2)
			return true
		when board[0[2]] && board[1[1]] && board[2[0]] == "X"
			end_of_game(player1)
			return true
		when board[0[2]] && board[1[1]] && board[2[0]] == "X"
			end_of_game(player1)
			return true
		else		 	 
			return false
		#put victory conditions here
	end

	def player(name)
	end

	def end_of_game(player)
		#put end of game condish here?
		puts player + " WINS BOW DOWN BITCH"
		puts "PLAY AGAIN Y/N?"
		play_again =  gets.chomp
		if play_again == "Y"
			#Reset the board and start again
			@board = [[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]]
		if play_again == "N"
			puts "SHUT IT DOWN"
			#ends the program
		else 
			puts "Please put either Y or N, noob"
		end
	end
end