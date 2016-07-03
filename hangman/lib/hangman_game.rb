require_relative 'hangman'

puts "Its Hang man tiem!"
puts "You have 6 guesses before someone dies..."
source = Words.new("5desk.csv")
word = Word.new
word_hangman = word.hangman_word(source)

guess = Guess.new(word_hangman)
guess.generate
guess.display

guess_count = 0

while guess_count < 6 do 
	puts "Letter pls"
	letter = gets.chomp
	
	
	guess_count += 1
end

if guess_count = 6
	puts "Death comes for us all in the end..."
end


