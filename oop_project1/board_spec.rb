require "Board"

describe "#initialize" do
  it "builds a 3 by 3 board full of nill values" do
    expect(initialize).to eq([[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]])
  end
end
describe "#display_board" do
  it "does something" do
    expect(something).to eq()
  end
end
describe "#move" do
  it "does something" do
    expect(something).to eq()
  end
end
describe "#victory_conditions" do
  it "does something" do
    expect(something).to eq()
  end
end
describe "#player" do
  it "does something" do
    expect(something).to eq()
  end
end
describe "#end_of_game" do
  it "does something" do
    expect(something).to eq()
  end
end


# http://en.wikipedia.org/wiki/Factorial
describe "#factorial" do
  it "computes the factorial of 0" do
    expect(factorial(0)).to eq(1)
  end
  it "computes the factorial of 1" do
    expect(factorial(1)).to eq(1)
  end
  it "computes the factorial of 2" do
    expect(factorial(2)).to eq(2)
  end
  it "computes the factorial of 5" do
    expect(factorial(5)).to eq(120)
  end
  it "computes the factorial of 10" do
    expect(factorial(10)).to eq(3628800)
  end
end