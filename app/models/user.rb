class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  has_many :task_board_members, class_name: "Task::BoardMember"
  has_many :task_boards, through: :task_board_members, class_name: "Task::Board"
end
