module Task
  class CardsController < ApplicationController
    def index
      board = Task::Board.find params[:board_id]
      @cards = board.cards
    end

    def show
      @card = Task::Card.find params[:id]
    end

    def new
      @card = Task::Card.new
    end

    def create
      board = Task::Board.find params[:board_id]
      board.card.build card_params
      if board.save
        redirect_to board_path(params[:board_id])
      else
        render :new
      end
    end

    private

      def card_params
        params.require(:task_card).permit(:title, :description, :point)
      end
  end
end