class CreateTableTaskPoints < ActiveRecord::Migration[5.1]
  def up
    create_table :task_points do |t|
      t.integer :board_id, null: false
      t.integer :point, null: false
      t.timestamps
    end
  end
end
