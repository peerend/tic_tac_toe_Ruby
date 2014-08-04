require 'space'

class Board

attr_accessor(:spaces)

  def initialize
    @spaces = []
    1.upto(3) do |x|
      1.upto(3) do |y|
        @spaces << Space.new(x,y)
      end
    end
  end

  def find_tile(user_x, user_y)
    found_space = {}
    @spaces.each do |space|
      if (space.coordinate == [user_x, user_y])
        found_space = space
      end
    end
    found_space
  end
end
