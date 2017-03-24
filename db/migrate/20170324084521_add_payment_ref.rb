class AddPaymentRef < ActiveRecord::Migration[5.0]
  def change
    add_reference :payments, :loan, foreign_key: true
  end
end
