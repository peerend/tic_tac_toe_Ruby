require 'rspec'
require 'space'
require 'board'

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
      test_Space.mark_space
      expect(test_Space.coord_open).to eq(false)
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




