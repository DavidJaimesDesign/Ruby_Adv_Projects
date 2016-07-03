require 'csv'

class Words
	attr_accessor :words
	def initialize(source)
		@words = CSV.open source.to_s
	end
	def hangman_words
		hangman_array = []
		words.each do |row|
			word = row[0]
			hangman_array.push(word)
		end
		hangman_array.delete_if{|word| word.length < 5 || word.length > 12}
		hangman_array
	end
end

class Word
	attr_accessor :word, :source
	def initialize(word = "")
		@word = word
	end

	def hangman_word(source)
		hangman_words = source.hangman_words
		word = hangman_words[rand(hangman_words.length)]
	end
end

class Guess_letter
	attr_accessor :word, :guess
	def initialize(guess, word)
		@guess = guess
		@word = word
	end

	def guess?
		if guess.right_guess?
			true
		else
			false
		end
	end	 

	private

	def right_guess?
	 	word.any?{|i| word[i] == guess}
	end
end

class Guess
	#generates the guess array from a word
	@@guess_var = Array.new  
	attr_accessor :word, :guess_var
	def initialize(word)
		@word = word	
	end

	def generate
	 	#generates the guess array 
	 	(word.to_s.length).times { @@guess_var.push("_") }
	end

	def display
		@@guess_var.each{|val| print " #{val} "}
		puts ""
	end
end

