class AddColumnReleaseDay < ActiveRecord::Migration[5.1]
  def change
    add_column :task_boards, :release_day, :date
  end
end
