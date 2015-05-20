class AddUserTypeToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :user_type, :integer
  end
end
