class RenameTaskPoints < ActiveRecord::Migration[5.1]
  def change
    rename_table :task_points, :task_total_points
  end
end
