class AddSavingToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_reference :savings, :employee, foreign_key: true
  end
end
