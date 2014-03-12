class Grant < ActiveRecord::Base

  has_many :funders
  has_many :deliverables
  has_many :grant_allocation
end
