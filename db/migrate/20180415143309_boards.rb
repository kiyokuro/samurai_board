class Boards < ActiveRecord::Migration[5.1]
  def up
    create_table :task_boards do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
