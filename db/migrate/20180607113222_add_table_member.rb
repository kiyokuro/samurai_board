class AddTableMember < ActiveRecord::Migration[5.1]
  def change
    create_table :task_board_members do |t|
      t.integer :board_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
