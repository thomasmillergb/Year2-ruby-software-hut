class SubTask < ActiveRecord::Base
  belongs_to :task
  has_many :task_comments
end
