module Task
  class Board < ApplicationRecord
    has_many :total_points
    has_many :finished_points
    has_many :cards
  end
end
