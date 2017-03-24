class Contribution < ApplicationRecord
  belongs_to :employee
  has_many :deposit_contributions
end
