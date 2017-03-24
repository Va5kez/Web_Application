class Saving < ApplicationRecord
  belongs_to :employee
  has_many :deposit_savings
end
