class CreateExpenses < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.string :expenseDescription
      t.decimal :amount
      t.date :expenseDate
      t.references :tripName, null: false, foreign_key: true
      t.references :payer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
