class Student < ActiveRecord::Base

 # A student can have many awards.
  has_many :awards






end
