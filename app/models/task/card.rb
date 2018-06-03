module Task
  class Card < ApplicationRecord
    belongs_to :board
  end
end