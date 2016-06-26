colors = ["black", "white", "red", "blue", "yellow", "green"]
blank_board = ["", "", "", ""]

def code_gen(board)
	colors = ["black", "white", "red", "blue", "yellow", "green"]
	board[0] = colors[rand(0..5)]
	board[1] = colors[rand(0..5)]
	board[2] = colors[rand(0..5)]
	board[3] = colors[rand(0..5)]
end

def guess_check(board,guess)
	@board = board
	@guess = guess
	red_pin_arr = Array.new
	no_pin_arr = guess - board

	board.each_with_index do |value, index|
		if board[index] == guess[index]
			red_pin_arr.push(value)
		end
	end

	white_pin_arr = guess - no_pin_arr - red_pin_arr
	
	puts "There are #{white_pin_arr.length} white pins"
	puts "There are #{red_pin_arr.length} red pins"

end


