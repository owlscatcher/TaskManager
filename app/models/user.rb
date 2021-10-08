class User < ApplicationRecord
  has_secure_password

  has_many :my_tasks, class_name: 'Task', foreign_key: :author_id
  has_many :assigned_tasks, class_name: 'Task', foreign_key: :assignee_id

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates :email, uniqueness: { case_sensitive: false }, presence: true, email: true
end
