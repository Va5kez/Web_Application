class Employee < ApplicationRecord
  after_create :create_cap
  after_create :create_cah
  has_one :saving
  has_one :contribution

protected
  def create_cap
    cuentap = Saving.new
    cuentap.name = self.name
    cuentap.balance = 200
    cuentap.employee_id= self.id
    cuentap.save
  end

  def create_cah
    cuentah = Contribution.new
    cuentah.name = self.name
    cuentah.balance = 200
    cuentah.employee_id= self.id
    cuentah.save
  end

end
