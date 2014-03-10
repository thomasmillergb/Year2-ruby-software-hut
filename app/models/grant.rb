class Grant < ActiveRecord::Base
  belongs_to :funder
  belongs_to :awarded
end
