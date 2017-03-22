class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :primary_email
      t.string :secondary_email
      t.date :birth_at
      t.date :start_at
      t.string :user
      t.text :password_digest
      t.string :tipo

      t.timestamps
    end
  end
end
