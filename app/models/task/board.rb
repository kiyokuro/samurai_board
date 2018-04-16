module Task
  class Board < ApplicationRecord
    has_many :points
  end
end