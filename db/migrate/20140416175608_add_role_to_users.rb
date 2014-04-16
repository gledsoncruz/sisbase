class AddRoleToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :role, :string, limit: 20, null: false
  end
end
