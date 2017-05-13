class AddBirthdayToUsers < ActiveRecord::Migration
  def change
	add_column :students, :birthday, :datetime
  end
end
