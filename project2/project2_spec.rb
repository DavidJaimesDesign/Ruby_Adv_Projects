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
	end

	describe "my_any?" do 
		it "has a #my_any? method" do
			expect([]).to respond_to(:my_any?)
		end
	end

	describe "my_none?" do 
		it "has a #my_none? method" do
			expect([]).to respond_to(:my_none?)
		end
	end

	describe "my_count" do 
		it "has a #my_count method" do
			expect([]).to respond_to(:my_count)
		end
	end

	describe "#my_map" do
		it "has a #my_map method" do
			expect([]).to respond_to(:my_map)
		end
	end

	describe "#my_inject" do
		it "has a #my_each method" do
			expect([]).to respond_to(:my_each)
		end
	end

	describe "multiply_els" do
		it "has a #my_multiply_els method" do
			expect([]).to respond_to(:my_multiply_els)
		end
	end


end 