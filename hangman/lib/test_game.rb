require 'yaml'
require_relative 'game'

test = Game.new
test.load_game("Test2")
test.name
test.count
test.guess
test.word

pro_name = "pro"
pro_word = "pro"
pro_guess = ["p", "r", "o"]
pro_count = 0

test_save = Game.new(pro_word, pro_guess, pro_count, pro_name)
test_save.save_game(test_save)


