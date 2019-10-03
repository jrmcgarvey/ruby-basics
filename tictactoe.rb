class Board
  def initialize
    @board_array=Array.new(3){Array.new(3){" "}}
#    self.dump_board
  end

  def dump_board
    for i in (0..2)
      for j in (0..2)
        puts i.to_s + j.to_s + @board_array[i][j] + "xx"
      end
    end
  end
  
  def help
    puts "Move coordinates are specified by two numbers, the column and row, separated by a comma.  For example, the middle square on the left side is 0,1 ."
  end
  
  def validate(m)
    if m.length != 2
      puts "at 1"
      return false
    end
    if !(0..2).include?(m[0]) || !(0..2).include?(m[1])
      return false
    end
    if @board_array[m[1]][m[0]] != " "
      return false
    end
    true
  end
  
  def get_move(player)
    loop do
      move = gets.chomp.split(",")
      move.map! { |a| a=a.to_i }
      if (!self.validate(move))
        puts "That's not a valid move."
        self.help
        self.render
      else
        @board_array[move[1]][move[0]]=player
        break
      end
    end
  end
  
  def render
    puts "   |   |   "
    puts " " + @board_array[2][0] + " | " + @board_array[2][1] + " | " + @board_array[2][2]
    puts "   |   |   "
    puts "---+---+---"
    puts "   |   |   "
    puts " " + @board_array[1][0] + " | " + @board_array[1][1] + " | " + @board_array[1][2]
    puts "   |   |   "
    puts "---+---+---"
    puts "   |   |   "
    puts " " + @board_array[0][0] + " | " + @board_array[0][1] + " | " + @board_array[0][2]
    puts "   |   |   "
  end
  def winner_row
    for n in (0..2) 
      row = @board_array[n]
      if row == "XXX" || row == "OOO"
        return true
      end
    end
    false
  end
  
  def winner_column
    for i in (0..2)
      column = @board_array[i][0] + @board_array[i][1] + @board_array[i][2]
      if column == "XXX" || column == "OOO"
        return true
      end
    end
    false
  end
  
  def winner_diag
    diag = @board_array[0][0] + @board_array[1][1] + @board_array[2][2]
    if diag == "XXX" || diag == "OOO"
      return true
    end
    diag = @board_array[0][2] + @board_array[1][1] + @board_array[2][0]
    if diag == "XXX" || diag == "OOO"
      return true
    end
    false
  end
  def winner
    if self.winner_diag || self.winner_column || self.winner_row
      return true
    end
    false
  end
  
  def moves_left
    for i in (0..2)
      for j in (0..2)
        if @board_array[i][j] == " "
          return true
        end
      end
    end
    false
  end
  def do_move(player)
    puts "Player #{player}, enter the coordinates of your move."
    get_move(player)
    render
    if winner
      puts "Player #{player}, congratulations, you have won"
      return false
    end
    if !moves_left
      puts "Cat's game."
      return false
    end
    true
  end
end

# initialize
board = Board.new
board.render
board.help
# main loop
loop do
  if !board.do_move("X")
    break
  end
  if !board.do_move("O")
    break
  end
end