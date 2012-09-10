class RemovePasswordFromUsers < ActiveRecord::Migration
  def up
  end

  def down
	remove_column :users, :password
  end
end
