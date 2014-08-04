require './lib/board'
require './lib/game'
require './lib/player'
require './lib/space'
require 'pry'

def main_menu
  puts "Welcome to tic-tac-toe"
  puts 'Please Enter Player 1 name'
  name1 = gets.chomp.to_s
  puts 'Please Enter Player 2 name'
  name2 = gets.chomp.to_s
  new_game = Game.new(name1, name2)

  while new_game.win? == false do
    system('clear')
    new_game.board.draw_board
    puts "Enter your x coordinate"
    x_coord = gets.chomp.to_i
    puts "Enter your y coordinate"
    y_coord = gets.chomp.to_i
    if x_coord<=3 && y_coord <=3
      new_game.turn(x_coord, y_coord)
    else
      puts "bad choice, game over"
    end
  end
  if new_game.win? == true
    puts "winner"
  end
end
main_menu
