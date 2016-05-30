require "project2"

describe Enumerable do
	describe "#my_each" do
		it "has a #my_each method" do
			expect([]).to respond_to(:my_each)
		end

		it "should go through each value in an array" do
		end

		it "should yield to a block" do
		end

		it "should return an Enumerator if there is no block" do
		end

	end

	describe "#my_each_with_index" do 
		it "has a #my_each_with_index method" do
			expect([]).to respond_to(:my_each_with_index)
		end

		it "goes through each index and value in an array" do
		end

		it "should yield to a block" do
		end

		it "should return an Enumerator if there is no block" do
		end

	end

	describe "#my_select" do
		it "has a #my_select method" do
			expect([]).to respond_to(:my_select)
		end

		it "Returns an array containing all elements" do 
		end

		it "Returns an array w/ all elements of enum where the block is true" do
		end
	end

	describe "#my_all?" do
		it "has a #my_all method" do
			expect([]).to respond_to(:my_all?)
		end

		it "Goes through each element and returns true if there are no nil or false values in the block"
		end

		it "Has a default block {|obj| obj} that returns true when there are no nil or false values"
		end

	end

	describe "my_any?" do 
		it "has a #my_any? method" do
			expect([]).to respond_to(:my_any?)
		end

		it "Goes through each element and returns true if any value in through the block returns true" 
		end

		it "Has a default block {|obj| obj} that returns true if any value evals to true"
		end

	end

	describe "my_none?" do 
		it "has a #my_none? method" do
			expect([]).to respond_to(:my_none?)
		end

		it "returns true if none of the block evalutates to true"
		end

		it "if there is no block it only returns true if all the values are false"
		end

	end

	describe "my_count" do 
		it "has a #my_count method" do
			expect([]).to respond_to(:my_count)
		end

		it "returns the number of values through enumaration"
		end

		it "If there is a block given it counts the number of elements that evaluate to true"
		end

	end

	describe "#my_map" do
		it "has a #my_map method" do
			expect([]).to respond_to(:my_map)
		end

		it "returns a new array where each element has been run through the block once"
		end

		it "if there is no block it returns an enumerator"
		end
	end

	describe "#my_inject" do
		it "has a #my_each method" do
			expect([]).to respond_to(:my_each)
		end

		it "combine all elements through enum by applying a block or a symbol that names a method or opperator"
		end

		it "if there is no bock or symnol it returns the first element of the collection I think this means array[0]?"
		end

	end

	describe "multiply_els" do
		it "has a #my_multiply_els method" 
			expect([]).to respond_to(:my_multiply_els)
		end

		it
	end


end 