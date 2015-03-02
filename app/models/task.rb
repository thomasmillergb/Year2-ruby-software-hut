class Task < ActiveRecord::Base
  has_many :task_comments
  has_many :sub_tasks
  belongs_to :project
  
end
