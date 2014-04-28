class Grant < ActiveRecord::Base
  has_many :projectcat
  has_many :funders
  has_many :deliverables
  has_many :grant_allocation
#  has_many :statuses
  has_many :grantsubs


def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end


end
