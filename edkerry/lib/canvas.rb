require 'matrix'

class Canvas

  attr_reader :dimension

  def initialize(row,col)
    @dimension = makeDimension(row,col)
  end

  def toScreen
    border = '-'
    edge = '|'
    return (border * (@dimension.column_count + 2)) + "\n" +
    ((edge + (' ' * @dimension.column_count) + edge  + "\n" ) * @dimension.row_count) +
    (border * (@dimension.column_count + 2))
  end

  private

  def makeDimension(row,col)
    m = Matrix.build(row, col){nil}
    m
  end
end

class Matrix
  def []=(row, column, value)
    @rows[row][column] = value
  end
end
