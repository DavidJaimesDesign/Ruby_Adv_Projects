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
	puts hangman_words[rand(hangman_words.length)]
end

def wrong_guess(letter)
	wrong_letters.push(letter)
	puts "Wrong guesses #{wrong_letters}"
	puts "You have #{6 - wrong_letters.length} guesses left" 
end

def right_guess(letter)
end

=begin
	
rescue Exception => e
	
end
class Game
	def initialize(word = Word.new)
		@word = hangman_word(words)
	end

	def guess_check(guess)
	end

	def win
	end

	def loose
	end

	def save
	end

	def load
	end
end
=end

new_word = hangman_word(words)