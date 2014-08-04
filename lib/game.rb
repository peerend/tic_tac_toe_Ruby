require 'board'
require 'player'

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
      @board.find_tile(x , y).mark_space(@player0.symbol)
    else
      @board.find_tile(x , y).mark_space(@player1.symbol)
    end
    @turn += 1
  end

  def win?
    if board.spaces[0].symbol == board.spaces[1].symbol && board.spaces[2].symbol == board.spaces[1].symbol
      true
    elsif board.spaces[4].symbol == board.spaces[5].symbol && board.spaces[5].symbol == board.spaces[6].symbol
      true
    elsif board.spaces[7].symbol == board.spaces[8].symbol && board.spaces[8].symbol == board.spaces[9].symbol
      true
    elsif board.spaces[4].symbol == board.spaces[1].symbol && board.spaces[1].symbol == board.spaces[7].symbol
      true
    elsif board.spaces[5].symbol == board.spaces[2].symbol && board.spaces[2].symbol == board.spaces[8].symbol
      true
    elsif board.spaces[3].symbol == board.spaces[6].symbol && board.spaces[6].symbol == board.spaces[9].symbol
      true
    elsif elsifboard.spaces[9].symbol == board.spaces[5].symbol && board.spaces[5].symbol == board.spaces[1].symbol
      true
    elsif board.spaces[7].symbol == board.spaces[5].symbol && board.spaces[5].symbol == board.spaces[3].symbol
      true
    else
      false
    end
  end
end
