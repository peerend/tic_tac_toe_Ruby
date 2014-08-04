require 'pry'

class Game

attr_reader(:board)

  def initialize(player0, player1)
    @turn = 0
    @player0 = Player.new(player0, "O")
    @player1 = Player.new(player1, "X")
    @board = Board.new
  end

  def turn(x, y)

      if @turn.even?
        @board.find_tile(x , y).mark_space("O")
        active_tile = @board.find_tile(x, y)
        index = @board.spaces.index(active_tile)
        @board.grid[index] = "O "
      else
        @board.find_tile(x , y).mark_space("X")
        active_tile = @board.find_tile(x, y)
        index = @board.spaces.index(active_tile)
        @board.grid[index] = "X "
      end
      @turn += 1
  end

  def win?
    win = false

    if @board.spaces[0].symbol == @board.spaces[1].symbol && @board.spaces[1].symbol == @board.spaces[2].symbol
      win = true
    elsif @board.spaces[3].symbol == @board.spaces[4].symbol && @board.spaces[4].symbol == @board.spaces[5].symbol
      win = true
    elsif @board.spaces[6].symbol == @board.spaces[7].symbol && @board.spaces[7].symbol == @board.spaces[8].symbol
      win = true
    elsif @board.spaces[0].symbol == @board.spaces[3].symbol && @board.spaces[3].symbol == @board.spaces[6].symbol
      win = true
    elsif @board.spaces[1].symbol == @board.spaces[4].symbol && @board.spaces[4].symbol == @board.spaces[7].symbol
      win = true
    elsif @board.spaces[2].symbol == @board.spaces[5].symbol && @board.spaces[5].symbol == @board.spaces[8].symbol
      win = true
    elsif @board.spaces[0].symbol == @board.spaces[4].symbol && @board.spaces[4].symbol == @board.spaces[8].symbol
      win = true
    elsif @board.spaces[2].symbol == @board.spaces[4].symbol && @board.spaces[4].symbol == @board.spaces[6].symbol
      win = true
    end
    win
  end
end
