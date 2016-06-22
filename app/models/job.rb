class Job < ActiveRecord::Base
  belongs_to :branchcom
  belongs_to :salary_grade
end
