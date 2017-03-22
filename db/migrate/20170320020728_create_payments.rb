class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.date :date_at
      t.decimal :amount
      t.decimal :interest_paid
      t.decimal :capital_paid

      t.timestamps
    end
  end
end
