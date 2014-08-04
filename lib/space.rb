class Space

attr_reader(:coordinate)
attr_accessor(:coord_open)

  def initialize(x_coord, y_coord)
    @coordinate = [x_coord, y_coord]
    @coord_open = true
  end
end
