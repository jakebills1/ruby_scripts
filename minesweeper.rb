require 'pry'
@move_count = 0
def game_board
  # print matrix
  top_row = "   1 2 3 4 5 6 7 8 9"
  row = " |_|_|_|_|_|_|_|_|_|"
  puts(top_row)
  letter = "A"
  current_row = letter + row
  9.times do
    puts(current_row)
    letter = (letter.ord + 1).chr
    current_row = letter + row
  end
end

def prompt
  puts("\nWelcome to Minesweeper! Select a square by entering its coordinates like \"A 1\"")
  coords = gets.strip
  arr = coords.split(" ")
  x_coord = arr[0]
  y_coord = arr[1]
  reveal(x_coord, y_coord)
end

def reveal(x, y)
  # go to the letter-th row, and sub the number-th underscore for a mine, blank, or digit
  binding.pry
end






game_board()
prompt()

