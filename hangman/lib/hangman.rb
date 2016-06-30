require 'csv'
words = CSV.open "5desk.csv" 
wrong_letters = Array.new
right_letters = Array.new

class Words
	attr_accessor: words
	def initialize(source)
		@words = CSV.open source.to_s
	end

	def hangman_words
	words.each do |row|
		word = row[0]
		if word.length < 5 || word.length > 12
			words.delete(word)
		end
	end
end

class Word
	attr_accessor: word
	def initialize(word = "")
		@word = word
	end

	def hangman_word
		source = Words.new(5desk.csv)
		hangman_words = source.hangman_words
		word = hangman_words[rand(hangman_words.length)]
	end
end


class Guess
	def initialize(letter)
		@letter = letter
	end

	def guess?
		
	end 

	def wrong_guess(letter)
		wrong_letters.push(letter)
		puts "Wrong guesses #{wrong_letters}"
		puts "You have #{6 - wrong_letters.length} guesses left" 
	end

	def right_guess(letter)
	#fills in the spots where the letters match with the word 
	end
end

class Game
	def empty_lines(word)
		empty_lines = Array.new(word.length) {|i| i = "_"}
		print empty_lines
	end
end



new_word = hangman_word(words)

empty_lines(new_word)