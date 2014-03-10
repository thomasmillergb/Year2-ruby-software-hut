class Award < ActiveRecord::Base

# Each award is linked to a student through 
# the student_id field.
belongs_to :student
end
