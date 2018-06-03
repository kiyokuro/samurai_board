class AddTableTaskCard < ActiveRecord::Migration[5.1]
  def change
    create_table :task_cards do |t|
      t.integer :board_id, null: false
      t.string :title, null: false
      t.string :description
      t.integer :point, null: false, unsigned: true
      t.timestamps
    end
  end
end
