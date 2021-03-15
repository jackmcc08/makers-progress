class Board
  POSSIBLE_MOVES = { top_left: 0, top_middle: 3, top_right: 6,
  middle_left: 16, middle: 19, middle_right: 22,
  bottom_left: 40, bottom_middle: 43, bottom_right: 46 }

  POSSIBLE_WINS = { top_left: [[3,6],[19,46],[16,40]], top_middle: [[0,6],[19,43]], top_right: [[0,3],[19,40],[22,46]],
  middle_left: [[0,40],[19,22]], middle: [[0,46],[3,43],[6,40],[16,22]], middle_right: [[6,46],[16,19]],
  bottom_left: [[0,16],[6,19],[43,46]], bottom_middle: [[3,19],[40,46]], bottom_right:[[0,19],[6,22],[40,43]] }

  def initialize
    @current_board = "  | |  \n__|_|__\n  | |  \n__|_|__\n  | |  \n  | |  "
  end

  def view_board
    puts "\n"
    puts @current_board
    @current_board
  end

  def moves
    moves_string = ""
    POSSIBLE_MOVES.each_key { |key| moves_string << ":#{key}\n"}
    moves_string.rstrip
  end

  def x_move(move)
    check_move(move)
    make_move(move, "x")
    return "x is the winner!!" if win_check(move, "x")
    view_board
  end

  def o_move(move)
    check_move(move)
    make_move(move, "o")
    return "o is the winner!!" if win_check(move, "o")
    view_board
  end

  private
  def check_move(move)
    raise "You cannot move there, choose another position." if @current_board[POSSIBLE_MOVES[move]] != " "
  end

  def make_move(move, marker)
    @current_board[POSSIBLE_MOVES[move]] = marker
  end

  def win_check(move, marker)
    POSSIBLE_WINS[move].each do |move_set|
      if move_set.all? { |move| @current_board[move] == marker}
        return true
      end
    end
    false
  end
end
