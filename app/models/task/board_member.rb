module Task
  class BoardMember < ApplicationRecord
    belongs_to :user, class_name: "::User"
    belongs_to :board, class_name: "Task::Board"
  end
end
