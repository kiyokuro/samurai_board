module Task
  class Point < ApplicationRecord
    belongs_to :board
  end
end