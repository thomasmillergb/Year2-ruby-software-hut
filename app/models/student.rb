class Student < ActiveRecord::Base

 # A student can have many awards.
  has_many :awards
   def name
    return first_name + " " + last_name
   end



end
