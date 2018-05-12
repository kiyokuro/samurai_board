class Task::BoardForm
  include ActiveModel::Model

  attr_accessor :name, :total_point, :release_day
  attr_reader :board

  def save
    @board = Task::Board.new(name: name, release_day: release_day)
    @board.total_points.build(total_point: total_point, change_day: Date.today)
    @board.save
  end
end
