module Task
  class Board < ApplicationRecord
    has_many :points
    has_many :finished_points
  end
end
