class Task < ActiveRecord::Base
  has_many :task_comments
  belongs_to :project
end
