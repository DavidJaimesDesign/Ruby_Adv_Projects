puts "Decide amongst yourselves who will go first X always goes first"
puts "To make a move simply state where in the graph you want you piece"
puts "For example top left is A1"
new_game = Board.new

while victory_conditions(new_game) == false do 
	puts "X your turn"
	place_x = gets.chomp
	#method where they actually add to the board
	display_board(new_game)
	puts "O your turn"
	place_o = gets.chomp
	#method where they actually add to the board 
	display_board(new_game)
end 


