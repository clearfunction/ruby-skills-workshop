class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.decimal :gpa
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :email

      t.timestamps null: false
    end
  end
end
