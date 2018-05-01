class Task::BoardForm
  include ActiveModel::Model

  attr_accessor :name, :total_point, :release_day
  attr_reader :board

  def save
    @board = Task::Board.new(name: name, release_day: release_day)
    @board.points.build(total_point: total_point)
    @board.save
  end
end
