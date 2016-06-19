new_game = Array.new(9, nil)

def display_board(board)
	puts "1   2   3  "
	puts "A " + board[0].to_s + " | " + board[1].to_s  + " | " + board[2].to_s 
	puts "B " + board[3].to_s  + " | " + board[4].to_s  + " | " + board[5].to_s 
	puts "C " + board[6].to_s  + " | " + board[7].to_s  + " | " + board[8].to_s 
end

def move(input,XO)
	case move
	when input.capitalize == "A1"
		board[0] = XO
	when input.capitalize == "A2"
		board[1] = XO
	when input.capitalize == "A3"
		board[2] = XO
	when input.capitalize == "B1"
		board[3] = XO
	when input.capitalize == "B2"
		board[4] = XO
	when input.capitalize == "B3"
		board[5] = XO
	when input.capitalize == "C1"
		board[6] = XO
	when input.capitalize == "C2"
		board[7] = XO
	when input.capitalize == "C3"
		board[8] = XO
	else 
		puts "Wrong input please try again"
end

display_board(new_game)
move("A1", "X")
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

