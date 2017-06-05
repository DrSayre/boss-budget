class AddPasswordToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :authentication_token, :string
    add_column :users, :password_digest, :string
  end
end
