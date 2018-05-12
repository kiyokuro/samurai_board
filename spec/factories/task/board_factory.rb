FactoryBot.define do
  factory :task_board, class: Task::Board do
    name "サムライボード"
    release_day "2000-01-01"
  end
end
