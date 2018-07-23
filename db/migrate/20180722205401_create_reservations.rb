class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :customer_id, foreign_key: true,
      t.string :reservation_code
      t.string :reservation_date

      t.timestamps
    end
  end
end
