class Task::BoardsController < ApplicationController
  def new
    @board_form = Task::BoardForm.new
  end

  def create
    @board_form = Task::BoardForm.new(board_params)
    if @board_form.save
      redirect_to board_path @board_form.board
    else
      render :new
    end
  end

  def index
  end

  def show
    @board = Task::Board.find(params[:id])
    @points = @board.points.map(&:total_point)
    @label_of_day = @board.finished_points.order(:finish_day).map {|day| day.finish_day.to_s }.to_json.html_safe
  end

  private

  def board_params
    params.require(:task_board_form).permit(:name, :release_day, :total_point)
  end
end
