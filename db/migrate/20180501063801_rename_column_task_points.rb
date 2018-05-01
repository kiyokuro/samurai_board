class RenameColumnTaskPoints < ActiveRecord::Migration[5.1]
  def change
    rename_column :task_points, :point, :total_point
  end
end
