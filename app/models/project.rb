class Project < ActiveRecord::Base
  has_many :tasks
  has_many :prodject_allocations
  #has_many: calander
  has_many :project_comments


def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
