class Board

attr_accessor(:spaces, :grid)

  def initialize
    @spaces = []
    @grid = [". ", ". ", ". ", ". ", ". ", ". ", ". ", ". ", ". "]
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

  def draw_board
    print "#{@grid[0]}" + "#{@grid[1]}" + "#{@grid[2]}" + "\n"
    print "#{@grid[3]}" + "#{@grid[4]}" + "#{@grid[5]}" + "\n"
    print "#{@grid[6]}" + "#{@grid[7]}" + "#{@grid[8]}" + "\n"
  end
end
