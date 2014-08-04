class Space

attr_reader(:coordinate, :coord_open)

  def initialize(x_coord, y_coord)
    @coordinate = [x_coord, y_coord]
    @coord_open = true
  end

  def mark_space
    @coord_open = false
  end
end
