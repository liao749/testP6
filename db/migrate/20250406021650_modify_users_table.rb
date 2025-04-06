class ModifyUsersTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :encrypted_password, :string
    remove_column :users, :reset_password_token, :string
    remove_column :users, :reset_password_sent_at, :datetime
    add_column :users, :name, :string
  end
end
