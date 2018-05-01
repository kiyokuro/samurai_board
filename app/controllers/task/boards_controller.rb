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
    @point = @board.points
  end

  private

  def board_params
    params.require(:task_board_form).permit(:name, :release_day, :total_point)
  end
end
