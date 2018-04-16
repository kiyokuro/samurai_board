class Task::BoardForm
  include ActiveModel::Model

  attr_accessor :name, :point
  attr_reader :board

  def save
    @board = Task::Board.new(name: name)
    @board.points.build(point: point)
    @board.save
  end
end
