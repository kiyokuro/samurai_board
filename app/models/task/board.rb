module Task
  class Board < ApplicationRecord
    has_many :total_points
    has_many :finished_points
    has_many :cards

    def card_total_points
      self.cards.inject(0) { |sum, card| sum + card.point }
    end
  end
end
