require "project2"

describe Enumerable do
	describe "#my_each" do
		it "has a #my_each method" do
			expect([]).to respond_to(:my_each)
		end

		it "Go through an array and apply a block" do
			expect([1,2,3,4].my_each{|i| print i}).to eq([1,2,3,4])  
		end

		it "should return an Enumerator if there is no block" do
			expect([1,2,3,4].my_each).to be_an(Enumerator)
		end

	end

	describe "#my_each_with_index" do 
		it "has a #my_each_with_index method" do
			expect([]).to respond_to(:my_each_with_index)
		end

		it "goes through each index and value in an array" do
			expect(["a", "b", "c", "d"].my_each_with_index{|index, value| print "#{index}: #{value}"}).to eq(["a", "b", "c", "d"])
		end

		it "should return an Enumerator if there is no block" do
			expect(["a", "b", "c", "d"].my_each_with_index).to be_an(Enumerator)
		end

	end

	describe "#my_select" do
		it "has a #my_select method" do
			expect([]).to respond_to(:my_select)
		end

		it "should return an Enumerator if there is no block" do
			expect([1,2,3,4].my_select). to be_an(Enumerator) 
		end

		it "Returns an array w/ all elements of enum where the block is true" do
			expect([1,2,3,4].my_select{|i| i.even?}).to eq([2,4])
		end
	end

	describe "#my_all?" do
		it "has a #my_all? method" do
			expect([]).to respond_to(:my_all?)
		end

		it "Goes through each element and returns true if there are no nil or false values in the block" do
			expect([1,2,3,4].my_all?{|int| int > 0}).to eq(true)
		end

		it "Returns false if there is a nil value" do 
			expect([nil, 1, 2, 3].my_all?{|int| int.is_a? Integer}).to eq(false)
		end

		it "Returns false if there is a false value" do
			expect([1,2,3,4].my_all?{|int| int < 0}).to eq(false)
		end

		it "Has a default block {|obj| obj} that returns true when there are no nil or false values" do
			expect([1,2,3,4].my_all?).to eq(true)
		end

		it "returns false in default block when there is a nil value" do 
			expect([1,nil,3,4].my_all?).to eq(false)
		end

		it "returns false in default block when ther is a false value" do
			expect([1,2,false,4].my_all?).tp eq(false)
		end

	end

	describe "my_any?" do 
		it "has a #my_any? method" do
			expect([]).to respond_to(:my_any?)
		end

		it "Goes through each element and returns true if any value in through the block returns true" do
			expect 
		end

		it "Has a default block {|obj| obj} that returns true if any value evals to true" do
		end

	end

	describe "my_none?" do 
		it "has a #my_none? method" do
			expect([]).to respond_to(:my_none?)
		end

		it "returns true if none of the block evalutates to true" do
		end

		it "if there is no block it only returns true if all the values are false" do
		end

	end

	describe "my_count" do 
		it "has a #my_count method" do
			expect([]).to respond_to(:my_count)
		end

		it "returns the number of values through enumaration" do
		end

		it "If there is a block given it counts the number of elements that evaluate to true" do
		end

	end

	describe "#my_map" do
		it "has a #my_map method" do
			expect([]).to respond_to(:my_map)
		end

		it "returns a new array where each element has been run through the block once" do
		end

		it "if there is no block it returns an enumerator" do
		end
	end

	describe "#my_inject" do
		it "has a #my_each method" do
			expect([]).to respond_to(:my_each)
		end

		it "combine all elements through enum by applying a block or a symbol that names a method or opperator" do
		end

		it "if there is no bock or symnol it returns the first element of the collection I think this means array[0]?" do
		end

	end

	describe "multiply_els" do
		it "has a #my_multiply_els method" do
			expect([]).to respond_to(:my_multiply_els)
		end

		it
	end


end 