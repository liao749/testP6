class CreateTrips < ActiveRecord::Migration[8.0]
  def change
    create_table :trips do |t|
      t.string :tripName
      t.date :startDate
      t.date :endDate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
