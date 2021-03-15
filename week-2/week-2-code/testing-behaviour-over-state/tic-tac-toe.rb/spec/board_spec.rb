require 'board'

describe Board do
  let(:test_board) { Board.new }
  let(:empty_board) { "  | |  \n__|_|__\n  | |  \n__|_|__\n  | |  \n  | |  " }
  let(:moves) { ":top_left\n:top_middle\n:top_right\n:middle_left\n:middle\n:middle_right\n:bottom_left\n:bottom_middle\n:bottom_right" }

  describe "#view_board" do
    it "displays the current board" do
      expect(test_board.view_board).to eq empty_board
    end
  end

  describe "#moves" do
    it "displays the POSSIBLE_MOVES" do
      expect(test_board.moves).to eq moves
    end
  end

  describe "x_move" do
    it "adds x to the indicated move position and returns the current_board" do
      first_move = "  | |  \n__|_|__\n  |x|  \n__|_|__\n  | |  \n  | |  "
      expect(test_board.x_move(:middle)).to eq first_move
    end

    it "does not allow you to move where another move has gone before" do
      test_board.x_move(:middle)
      test_board.o_move(:top_left)
      expect{test_board.x_move(:top_left)}.to raise_error("You cannot move there, choose another position.")
    end

    it "produces a victory message if you get 3 in a row" do
      test_board.x_move(:middle)
      test_board.o_move(:top_left)
      test_board.x_move(:middle_left)
      test_board.o_move(:top_right)
      expect(test_board.x_move(:middle_right)).to eq "x is the winner!!"
    end
  end

  describe "o_move" do
    it "adds o to the indicated move position and returns the current_board" do
      second_move = "o | |  \n__|_|__\n  |x|  \n__|_|__\n  | |  \n  | |  "
      test_board.x_move(:middle)
      expect(test_board.o_move(:top_left)).to eq second_move
    end

    it "does not allow you to move where another move has gone before" do
      test_board.x_move(:middle)
      test_board.o_move(:top_left)
      test_board.x_move(:top_right)
      expect{test_board.o_move(:top_right)}.to raise_error("You cannot move there, choose another position.")
    end

    it "produces a victory message if you get 3 in a row" do
      test_board.x_move(:middle)
      test_board.o_move(:top_left)
      test_board.x_move(:middle_left)
      test_board.o_move(:top_right)
      test_board.x_move(:bottom_left)
      expect(test_board.o_move(:top_middle)).to eq "o is the winner!!"
    end
  end
end
