module Task
  class TotalPointsController < ApplicationController
    def edit
      board = Task::Board.find params[:board_id]
      @total_point = board.total_points.order(:change_day).take
    end

    def update
      board = Task::Board.find params[:board_id]
      @total_point = board.total_points.order(:change_day).limit(1)
      if @total_point.update(total_point: total_point_params)
        redirect_to board_path board
      else
        render :edit
      end
    end

    def total_point_params
      params.require(:task_total_point).permit(:total_point)
    end
  end
end