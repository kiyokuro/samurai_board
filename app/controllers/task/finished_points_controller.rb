class Task::FinishedPointsController < ApplicationController
  def new
    @finished_point = Task::FinishedPoint.new
  end

  def create
    board = Task::Board.find params[:board_id]
    board.finished_points.build finished_point_params
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