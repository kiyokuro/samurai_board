class AddTaskFinshPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :task_finished_points do |t|
      t.integer :board_id, null: false
      t.integer :point, null: false
      t.date :finish_day, null: false
      t.timestamps
    end
  end
end
