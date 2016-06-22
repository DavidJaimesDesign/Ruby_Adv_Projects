require "spec_helper"

module TicTacToe
	describe Cell do
		context "#initialize" do
			it "Is initialized with a value of '' by default" do
				cell = Cell.new
				expect(cell.value).to eq ' '
			end

			it "Can be initialized with a valie of 'X' " do 
				cell = Cell.new("X")
				expect(cell.value).to eq "X"
			end
		end
	end
end
