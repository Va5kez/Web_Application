class Loan < ApplicationRecord
  belongs_to :employee
  has_many :payment
end
