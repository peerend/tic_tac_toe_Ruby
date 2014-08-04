require 'rspec'
require 'space'

describe 'Space' do
  describe 'initialize' do
    it 'given an x and y coordinate, creates a new instance of space' do
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

    it 'allows coord_open to be changed using a setter method' do
      test_Space = Space.new(1,1)
      test_Space.coord_open = false
      expect(test_Space.coord_open).to eq(false)
    end
  end
end
