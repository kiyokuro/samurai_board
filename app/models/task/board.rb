module Task
  class Board < ApplicationRecord
    has_many :total_points
    has_many :finished_points
    has_many :cards
    has_many :board_members
    has_many :users, through: :board_members

    def card_total_points
      self.cards.inject(0) { |sum, card| sum + card.point }
    end
  end
end
