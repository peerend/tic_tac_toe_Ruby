require 'rspec'
require 'space'
require 'game'
require 'board'
require 'player'

describe 'Space' do
  describe 'initialize' do
    it 'given an x and y coordinate, creates a new instance of Space' do
      test_Space = Space.new(1,1)
      expect(test_Space).to be_an_instance_of Space
    end

    it 'creates an instance variable and method called "coordinate" ' do
      test_Space = Space.new(1,1)
      expect(test_Space.coordinate).to eq([1,1])
    end

    it 'creates an instance variable and method called "coord_open set to true" ' do
      test_Space = Space.new(1,1)
      expect(test_Space.coord_open).to eq(true)
    end
  end

  describe 'mark_space' do
    it 'sets the coord_open variable of a space instance to false' do
      test_Space = Space.new(1,1)
      test_Space.mark_space("x")
      expect(test_Space.coord_open).to eq(false)
    end
    it 'sets a symbol for whomever marked the space' do
      test_Space = Space.new(1,1)
      test_Space.mark_space("X")
      expect(test_Space.symbol).to eq("X")
    end
  end
end

describe 'Board' do
  describe 'initialize' do
    it 'creates a new instance of Board' do
      test_Board = Board.new
      expect(test_Board).to be_an_instance_of Board
    end
  end

  describe 'find_tile' do
    it 'searches the spaces array for a specific space and returns a tile' do
      test_Board = Board.new
      expect(test_Board.find_tile(1,1)).to eq(test_Board.spaces[0])
    end
  end
end

describe 'Player' do
  it 'initializes and creates an instance of a new player' do
    test_player = Player.new("Christian", "X")
    expect(test_player).to be_an_instance_of Player
    expect(test_player.name).to eq("Christian")
  end
end

describe 'Game' do
  it 'initializes and creates an instance of a new game' do
    test_game = Game.new('christian', 'dylan')
    expect(test_game).to be_an_instance_of Game
  end
  it 'advances the turn counter' do
    test_game = Game.new('christian', 'dylan')
    expect(test_game.turn(1,1)).to eq 1
  end
  it 'marks spaces with a symbol and openness' do
    test_game = Game.new('christian', 'dylan')
    test_game.turn(1,1)
    expect(test_game.board.spaces[0].coord_open).to eq false
    expect(test_game.board.spaces[0].symbol).to eq "O"
  end
  it 'starts as false' do
    test_game = Game.new('christian', 'dylan')
    expect(test_game.win?).to eq false
  end
  it 'gives a win condition' do
    test_game = Game.new('christian', 'dylan')
    test_game.turn(1,1)
    test_game.turn(2,2)
    test_game.turn(1,3)
    test_game.turn(3,3)
    test_game.turn(1,2)
    expect(test_game.win?).to eq true
  end
end


