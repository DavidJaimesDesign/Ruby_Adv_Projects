require "spec_helper"

describe Array do 
	context "#all_empty?" do 
		it "returns true if all the elements of the Array are empty" do
			expect(["","",""].all_empty?).to be true
		end

		it "returns false if some of the elements of the Array are not empty" do
			expect(["", 1, "", Object.new, :a].all_empty?).to be false
		end

		it "returns true for an empty Array" do 
			expect([].all_empty?).to be true
		end
	end
	context "#all_same?" do 
		it "returns true if all the elements of the array are the same" do 
			expect(["A", "A", "A"].all_same?).to be true
		end

		it "returns false if some of the Array elements are not the same" do 
			expect(["", 1, ""].all_same?).to be false
		end

		it "returns true for an empty Array" do 
			expect([].all_same?).to be true
		end
	end
	context "#any_empty?"do
		it "returns true if any of the elements of the array are empty" do
			expect([1,2,""].any_empty?).to be true
		end

		it "returns false if ther are not any empty elements in the array" do
			expect([1,2,3].any_empty?).to be false
		end

		it "returns true for an empty array" do
			expect([].any_empty?).to be false
		end
	end
	context "#none_empty?" do 
		it "returns true if none of the elements of the array are empty" do 
			expect([1,2,3].none_empty?).to be true
		end

		it "rerutns false if there are any empty elements in the array" do
			expect([1,2,""].none_empty?).to be false
		end
	end
end