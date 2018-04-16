class Task::BoardController < ApplicationController
  def new
    @board = Task::Board.new
  end

  def create
    @board = Task::Board.new(board_params)
    if @board.save
      redirect_to board_path @board
    else
      render :new
    end
  end

  def index; end

  def show
    @board = Task::Board.find(params[:id])
  end

  private

  def board_params
    params.require(:task_board).permit(:name)
  end
end
