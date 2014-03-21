class Studentship < ActiveRecord::Base


 belongs_to :type
 belongs_to :student_subcat
  belongs_to :shipssubs
end
