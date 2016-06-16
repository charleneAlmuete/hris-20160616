class Branchcom < ActiveRecord::Base
  belongs_to :company
  belongs_to :branchset
end
