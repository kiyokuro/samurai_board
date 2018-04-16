class BoardController < ApplicationController
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

  def index
  end

  def show
  end

  private

    def board_params
      params.require(:board).parmit(:name)
    end
end