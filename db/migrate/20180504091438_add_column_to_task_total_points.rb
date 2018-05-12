class AddColumnToTaskTotalPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :task_total_points, :change_day, :date
    change_column :task_total_points, :change_day, :date, null: false
  end
end
