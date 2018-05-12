class Task::FinishedPointsController < ApplicationController
  def new
    @finished_point = Task::FinishedPoint.new
  end

  def create
    board = Task::Board.find params[:board_id]
    board.finished_points.build finished_point_params
    board.total_points.find_or_create_by(board: board, change_day: finished_point_params[:finish_day]) do |total_point|
      total_point.total_point = board.total_points.reverse_order.take.total_point
    end
    if board.save
      redirect_to board_path(params[:board_id])
    else
      render :new
    end
  end

  private

    def finished_point_params
      params.require(:task_finished_point).permit(:point, :finish_day)
    end
end