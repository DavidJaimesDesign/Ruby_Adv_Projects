new_game = Array.new(9, nil)

def display_board(board)
	puts board[0].to_s + " | " + board[1].to_s  + " | " + board[2].to_s 
	puts board[3].to_s + " | " + board[4].to_s  + " | " + board[5].to_s 
	puts board[6].to_s + " | " + board[7].to_s  + " | " + board[8].to_s 
end

def move(arr, square, value)
	arr[square] = value
end

def victory_conditions(arr, value)
	case win
		when arr[0..2] == value
			return true
		when arr[3..5] == value
			return true
		when arr[6..8] == value
			return true
		when (arr[0] && arr[3] && arr[6]) == value
			return true
		when (arr[1] && arr[4] && arr[5]) == value
			return true
		when (arr[2] && arr[5] && arr[8]) == value
			return true
		when (arr[0] && arr[4] && arr[8]) == value
			return true
		when (arr[6] && arr[4] && arr[2]) == vlaue
			return true
		else
			return false
	end
end

display_board(new_game)
move(new_game, 0, "X")
display_board(new_game)

=begin
puts "Decide amongst yourselves who will go first X always goes first"
puts "To make a move simply state where in the graph you want you piece"
puts "For example top left is A1"
new_game = Board.new

while victory_conditions(new_game) == false || new_game.all? == false do 
	puts "X your turn"
	place_x = gets.chomp
	move(place_x,"X")
	display_board(new_game)
	puts "O your turn"
	place_o = gets.chomp
	move(place_O,"O") 
	display_board(new_game)
end 
=end

