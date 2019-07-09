require 'pry'
STARTING_BOARD = [{letter: "", squares: [" 1", " 2", " 3", " 4", " 5", " 6", " 7", " 8", " 9"]},
                  {letter: "A", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "B", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "C", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "D", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "E", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "F", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "G", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "H", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]},
                  {letter: "I", squares: ["_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|", "_|"]}]

                   
class GameBoard
  def initialize(rows, move_count)
    @rows = rows
    @move_count = move_count 
  end
  def prompt
    message = @move_count == 0 ? 
    "Welcome to Minesweeper! Input a set of coordinates to begin play (A 1)"
    :
    "Enter another set of coordinates (A 1)"
    puts message
    for row in @rows
      print row[:letter] + " "
      for square in row[:squares]
        print square
      end
      puts
    end
    coords = gets.strip.split(" ")
    x_coord = coords[0]
    y_coord = coords[1]
    reveal(x_coord, y_coord)
  end
  def reveal(x, y)
    new_row = @rows.find { |row| row[:letter] == x}
    mine_found = @move_count > 0 ? [*0..100].sample > 12 ? false : true  : false
    new_row[:squares][y.to_i - 1] = mine_found ?  "*|" : "1|"
    @rows.map { |row|
      if row[:letter] == x
        new_row
      else
        row
      end 
    }
    @move_count += 1
    prompt()
  end
end

# game_board = GameBoard.new(STARTING_BOARD, 0)
# game_board.prompt
