require "project1"

describe "the bubble sort method" do
  it "bubble sorts arrays" do
    expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end

  it "bubble sorts even more arrays" do
  	expect(bubble_sort([1,0,0,0,0])).to eq([0,0,0,0,1])
  end
end

#describe "the bubble sort by method" do
#  it "says hello to someone" do
#    expect(greet("Alice")).to eq("Hello, Alice!")
# end
#
# it "says hello to someone else" do
#    expect(greet("Bob")).to eq("Hello, Bob!")
# end
#end
