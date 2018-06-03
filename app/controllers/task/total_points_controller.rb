module Taks
  class TotalPointsController < ApplicationController
    def edit
      board = Task::Board.find parmas[:board_id]
      @total_point = board.total_points.order(:change_day).limit(1)
    end

    def update
      @total_point = board.total_points.order(:change_day).limit(1)
      @total_point.update(total_point: total_point_params)
    end

    def total_point_params
      parmas.require(:task_total_point).permit(:total_point)
    end
  end
end