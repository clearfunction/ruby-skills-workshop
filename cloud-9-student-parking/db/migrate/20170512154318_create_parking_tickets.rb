class CreateParkingTickets < ActiveRecord::Migration
  def change
    create_table :parking_tickets do |t|
      t.decimal :fee
      t.string :reporter
      t.text :description
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
