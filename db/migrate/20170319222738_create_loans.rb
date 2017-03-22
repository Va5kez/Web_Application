class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.date :Date_at
      t.decimal :amount
      t.decimal :balance
      t.string :tipo
      t.integer :periods

      t.timestamps
    end
  end
end
