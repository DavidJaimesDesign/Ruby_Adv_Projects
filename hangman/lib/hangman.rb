require 'csv'
words = CSV.open "5desk.csv" 
wrong_letters = Array.new
right_letters = Array.new

def hangman_word(words)
	hangman_words = Array.new 
	words.each do |row|
		word = row[0]
		if word.length > 5 && word.length < 12
			hangman_words.push(word)
		end
	end
	hangman_words[rand(hangman_words.length)]
end

def wrong_guess(letter)
	wrong_letters.push(letter)
	puts "Wrong guesses #{wrong_letters}"
	puts "You have #{6 - wrong_letters.length} guesses left" 
end

def right_guess(letter)
	#fills in the spots where the letters match with the word 
end

def empty_lines(word)
	empty_lines = Array.new(word.length) {|i| i = "_"}
	print empty_lines
end

new_word = hangman_word(words)

empty_lines(new_word)