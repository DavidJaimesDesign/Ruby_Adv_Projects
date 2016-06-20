require "Board"

describe "The move board" do 
  it "Places either x or 0 on the board given the posisition" do
    board = Array.new(9, nil)
    expect(move(board, 1, "X")).to eq(board[1] = "X")
  end
end

describe "the victory conditions method" do 
  it "returns false uness victory conditions have been met" do
    board = Array.new(9, nil)
    expect(victory_conditions(board, "X")).to eq(false)
    board[0] = "X"
    board[1] = "X"
    board[2] = "X"
    expect(victory_conditions(board, "X")).to eq(true)
    board[0..8] = nil
    board[0] = "X"
    board[1] = "O"
    board[2] = "X"
    board[3] = "O"
    board[4] = "O"
    board[5] = "X"
    board[6] = "O"
    board[7] = "X"
    board[8] = "O"
    expect(victoy_conditions(board, "X")).to eq(false)
  end
end
