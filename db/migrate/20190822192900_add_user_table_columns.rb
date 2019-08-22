class AddUserTableColumns < ActiveRecord::Migration[5.2]
  def up
    remove_column :users, :name
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :password_digest, :string
  end

  def down
    add_column :users, :name, :string
    remove_column :users, :first_name
    remove_column :users, :last_name
    remove_column :users, :password_digest
  end
end
